import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/Contaiener_info.dart';
import 'package:flutter_application_2/widgets/bottom_navigation.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';
import 'package:flutter_application_2/widgets/home_tittle_movie.dart';
import 'package:flutter_application_2/widgets/text_movie_small.dart';
int _currendIndex= 2;
  final String _navigationText = '';



class MovieDetailView extends StatelessWidget {
  const  MovieDetailView({super.key});
  final String _watchNow = 'Watch Now';
  final String addToWatchList = 'Add To Watchlist';
  final String _textCreed = 'Creed Full Movie \nTurkish Dubing';
  final String _view = 'View. (23k)';
  final String _buttonLike = 'Like';
  final String _buttonComment = 'Comment';
  final String _buttonShare = 'Share';
  final String _storyline = 'Story Line';
  final String _creedCommand = 'The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.';
final String _actor = 'Actor';




  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  ConstStreamingMobile.imageCreed,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 2,
                ),
                PositionButtonLeft(),
                PositionedButtonRight(context),
              ],
            ),
            ConstStreamingMobile.sizedBoxHeight10,
            Padding(padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InfoMovieName(context),
                        ],
                      ),
                      InfoMovieRaiting()
                    ], ),
                  ConstStreamingMobile.sizedBoxHeight5,
                  TextMovieCommandSmall(text: ConstStreamingMobile.movieCommandSecond),
                  RowElevatedButtonMiiddle(),
                     ConstStreamingMobile.sizedBoxHeight10,
            TittleTextHome(text:_storyline),
               ConstStreamingMobile.sizedBoxHeight10,
            TextMovieCommandSmall(text:_creedCommand ),
               ConstStreamingMobile.sizedBoxHeight10,
            TittleTextHome(text:_actor),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ContainerFamousImage(image: ConstStreamingMobile.imageMichealB),
                ContainerFamousImage(image: ConstStreamingMobile.imageRambo),
                ContainerFamousImage(image: ConstStreamingMobile.imageThessa),
                ContainerFamousImage(image: ConstStreamingMobile.imagemAndre),
              ],
            )
            
                ],
                
              ),
              
            ),
            BottomNAvigationBarExtra(currendIndex: _currendIndex, navigationText: _navigationText, context: context)
            
         
      
          ],
          
        ),
      ),
   
    );
  }

  Padding RowElevatedButtonMiiddle() {
    return Padding(
          padding: ConstStreamingMobile.paddingall8,
          child: Row(
            children: [
              ElevatedButton.icon(onPressed: () {},  icon: Icon(Icons.favorite_outline,color: ConstStreamingMobile.colorWhite,),label: Text(_buttonLike,style: TextStyle(color: ConstStreamingMobile.colorWhite)),
              style: ElevatedButton.styleFrom(primary: ConstStreamingMobile.colorOrange,),
              ),
              ConstStreamingMobile.sizedboxWidht10,
                
                ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.comment_bank_outlined,color: ConstStreamingMobile.colorWhite,),label: Text(_buttonComment,style: TextStyle(color: ConstStreamingMobile.colorWhite)),
                style: ElevatedButton.styleFrom(primary: ConstStreamingMobile.colorOrange,),),
                ConstStreamingMobile.sizedboxWidht10,
                ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.share,color: ConstStreamingMobile.colorWhite,),label: Text(_buttonShare,style: TextStyle(color: ConstStreamingMobile.colorWhite),),
                style: ElevatedButton.styleFrom(primary: ConstStreamingMobile.colorOrange,), ), 
            ],
          ),
        );
  }

  Positioned PositionButtonLeft() {
    return Positioned(
                bottom: 100,
                left: 30,
                right: 230,
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.play_circle_outline,
                        color: ConstStreamingMobile.colorWhite),
                    label: Text(_watchNow,style: TextStyle(color: ConstStreamingMobile.colorWhite),),style: ElevatedButton.styleFrom(primary: ConstStreamingMobile.colorOrange,),));
  }

  Positioned PositionedButtonRight(BuildContext context) {
    return Positioned(
                bottom: 105,
                right: 30,
                left: 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstStreamingMobile.colorWhite,
                      borderRadius: BorderRadius.circular(3)),
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 22,
                  child: Row(
                    children: [
                     ConstStreamingMobile.sizedBoxHeight10,
                      Center(
                          child: Icon(
                        Icons.bookmark_border,
                        color: ConstStreamingMobile.colorOrange,
                      )),
                      Center(
                          child: Text(
                        addToWatchList,
                        style: TextStyle(
                            color: ConstStreamingMobile.colorOrange),
                      ))
                    ],
                  ),
                ));
  }

  Column InfoMovieRaiting() {
    return Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ConstStreamingMobile.colorAmber,
                          ),
                          TextMovieCommandSmall(
                              text:
                                  ConstStreamingMobile.movieIconCommandDikey),
                        ],
                      ),
                      TextMovieCommandSmall(text: _view)
                    ],
                  );
  }

  Text InfoMovieName(BuildContext context) {
    return Text(_textCreed,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: ConstStreamingMobile.colorWhite, fontSize: 25));
  }
}
