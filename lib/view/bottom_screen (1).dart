import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
import 'package:flutter_application_2/view/movie_detail_view.dart';
import 'package:flutter_application_2/view/movie_first_view.dart';
class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int _selectedIndex = 0;

  List<Widget> _listScreens = <Widget>[
      MovieDetailView(),
    MoviesFirstView(),
   
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // gereksiz margin ve paddigleri siler 
      backgroundColor: ConstStreamingMobile.colorWhite62,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: _iconSize,
     //   selectedItemColor: Colo,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ConstStreamingMobile.colorWhite62,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border_outlined,
              ),
              label: ' '),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle_outline_rounded,
              ),
              label: ' '),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: ' ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: _listScreens.elementAt(_selectedIndex),
    );
  }
}
