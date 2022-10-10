import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
import 'package:flutter_application_2/widgets/home_text_see_all.dart';
import 'package:flutter_application_2/widgets/home_tittle_movie.dart';

import 'package:flutter_application_2/widgets/stack_dikey_app.dart';
import 'package:flutter_application_2/widgets/stack_movie_app.dart';
import 'package:flutter_application_2/widgets/text_movie_small.dart';
import 'package:flutter_application_2/widgets/text_movie_tittle.dart';
import 'package:flutter_application_2/view/movie_detail_view.dart';

class MoviesFirstView extends StatelessWidget {
  const MoviesFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[900],
     body: Padding(
       padding: ConstStreamingMobile.paddingall8,
       child: SingleChildScrollView(
         child: Column(
          children: [
            RowHomeTittleSeeAll(),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StackMovieApp(images: ConstStreamingMobile.imageCreed, text: ConstStreamingMobile.imageCreedText),
                  ConstStreamingMobile.sizedBoxWidht5,
                  StackMovieApp(images: ConstStreamingMobile.imageSherlock, text: ConstStreamingMobile.sherlockText),
                  ConstStreamingMobile.sizedBoxWidht5,
                  StackMovieApp(images: ConstStreamingMobile.imagePrisonBreak, text: ConstStreamingMobile.prisonBreakText),
                 
                
                 
                ],
              ),
            ),
            ConstStreamingMobile.sizedBoxHeight25,
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       TittleTextHome(text: ConstStreamingMobile.homeBollywoodMovie,),
              TextButtonSeeAll(text: ConstStreamingMobile.seeAll,)
                    ],
                  ),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StackMovieDikeyApp(images: ConstStreamingMobile.imageSeven, text: ConstStreamingMobile.imageSevenText),
                          SizedBox(width: 10,),
                        StackMovieDikeyApp(images: ConstStreamingMobile.imagePk, text: ConstStreamingMobile.imagePkText)
                      ],
                    ),
                  )
       
          ],
         ),
       ),
     ),
    );
  }

  Row RowHomeTittleSeeAll() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TittleTextHome(text: ConstStreamingMobile.homeHollywoodMovie,),
            TextButtonSeeAll(text: ConstStreamingMobile.seeAll,)
          ]
        );
  }
}
