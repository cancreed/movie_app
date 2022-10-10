import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/bottom_navigation.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
import 'package:flutter_application_2/view/movie_detail_view.dart';

import '../widgets/container_watch_list.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();

}
int _currendIndex= 1;
  final String _navigationText = '';

final String _appbarTextr = 'Watchlist';


class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0,
      centerTitle: true,
        title:Text(_appbarTextr,style: TextStyle(color: ConstStreamingMobile.colorWhite,fontSize: 25),),
        leading: Icon(Icons.arrow_back_ios_rounded,color:ConstStreamingMobile.colorWhite,),
        
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            ContainerWatchListInfo(image: ConstStreamingMobile.imagePrisonBreak, text: ConstStreamingMobile.prisonBreakText,),
            ConstStreamingMobile.sizedBoxHeight10,
                     ContainerWatchListInfo(image: ConstStreamingMobile.imageSherlock, text: ConstStreamingMobile.sherlockText,),
              ConstStreamingMobile.sizedBoxHeight10,
                     ContainerWatchListInfo(image: ConstStreamingMobile.imageSeven, text: ConstStreamingMobile.imageSevenText,),
                       ConstStreamingMobile.sizedBoxHeight10,
                     GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailView(),));
                        
                      },
                      child: ContainerWatchListInfo(image: ConstStreamingMobile.imageCreed, text: ConstStreamingMobile.imageCreedText))
            
            
          ],
        ),
      ),

       bottomNavigationBar: BottomNAvigationBarExtra(currendIndex: _currendIndex, navigationText: _navigationText, context: context)
      
    );
  }
}