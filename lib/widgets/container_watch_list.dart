
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
import 'package:flutter_application_2/widgets/text_movie_small.dart';
import 'package:flutter_application_2/widgets/text_movie_tittle.dart';

class ContainerWatchListInfo extends StatelessWidget {
  const ContainerWatchListInfo({
    Key? key, required this.image, required this.text,
  }) : super(key: key);
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
children: [
  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: ConstStreamingMobile.colorWhite,),
    width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height /3.5,
    child: Stack(
    children: [
    
ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset(image,fit: BoxFit.cover, width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height /3.5,)),

  Positioned( bottom: 0,right: 0,
            child: Container(width: MediaQuery.of(context).size.width /14,height: MediaQuery.of(context).size.height /28, decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))),
    child:  Icon(Icons.delete,color: ConstStreamingMobile.colorBlueGrey,),),
          ),
Padding(
  padding: const EdgeInsets.only(top: 130),
  child:   Column(
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              
          
                TextMovieTittle(text:text),
          
                TextMovieCommandSmall(text: ConstStreamingMobile.movieCommandSecond),
                Row(
                  children: [
                    Icon(Icons.star,color: ConstStreamingMobile.colorAmber,),
                    TextMovieCommandSmall(text: ConstStreamingMobile.movieCommand),
                  ],
                )
          
            ],
          
          ),
            
    
        
        ],
      ),
    ],
  ),
)
    ],
    ),
  )
],
      ),
    );
  }
}