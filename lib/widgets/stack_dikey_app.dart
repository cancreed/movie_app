
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
import 'package:flutter_application_2/widgets/text_movie_small.dart';
import 'package:flutter_application_2/widgets/text_movie_tittle.dart';

class StackMovieDikeyApp extends StatelessWidget {
  const StackMovieDikeyApp({
    Key? key, required this.images, required this.text,
  }) : super(key: key);
  final String images;
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(height: MediaQuery.of(context).size.height /3,width: MediaQuery.of(context).size.width /2,
      child: Stack(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(25),
            child: Image.asset(images,fit: BoxFit.fill,height: MediaQuery.of(context).size.height /3,width: MediaQuery.of(context).size.width /2,
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextMovieTittle(text: text,),
                SizedBox(height: 5,),
                TextMovieCommandSmall(text: ConstStreamingMobile.movieCommand,),
                
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,color: ConstStreamingMobile.colorAmber,),
                        SizedBox(width: 5,),
                        TextMovieCommandSmall(text: ConstStreamingMobile.movieIconCommandDikey,),
                        
                      ],
                    ),
                    Row(
                      children: [
                        Container(height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.width /10, decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),color: ConstStreamingMobile.colorAmber
                        ),
                          
                          child: Icon(Icons.play_circle_outline,color: ConstStreamingMobile.colorWhite,))
                      ],
                    )
                  ],
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}

