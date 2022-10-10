import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/movie_detail_view.dart';
import 'package:flutter_application_2/view/movies_home%20(1).dart';
import 'package:flutter_application_2/view/watch_list_view.dart';


class BottomNAvigationBarExtra extends StatelessWidget {
  const BottomNAvigationBarExtra({
    Key? key,
    required int currendIndex,
    required String navigationText,
    required this.context,
  }) : _currendIndex = currendIndex, _navigationText = navigationText, super(key: key);

  final int _currendIndex;
  final String _navigationText;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar( backgroundColor: Colors.black54, selectedItemColor: Colors.orange,unselectedIconTheme: IconThemeData(color: Colors.white60),
            currentIndex: _currendIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: GestureDetector(
                onTap: () {
                onTap:  Navigator.push(context, MaterialPageRoute(builder: (context) => MoviesHome(),));
                  
                },
                child: Icon(Icons.home,)),label: _navigationText,),
               BottomNavigationBarItem(icon: GestureDetector( onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => WatchListPage(),));
               },
                
                child: Icon(Icons.bookmark,)),label: _navigationText,),
                BottomNavigationBarItem(icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailView(),));
                  },
                  child: Icon(Icons.play_circle_outline)),label: _navigationText),
                 BottomNavigationBarItem(icon: Icon(Icons.settings),label: _navigationText),
               
            ],
  
            
             );
  }
}