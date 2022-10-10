import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';

class TextMovieTittle extends StatelessWidget {
  const TextMovieTittle({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline4?.copyWith(color: ConstStreamingMobile.colorWhite,fontWeight: FontWeight.bold),);
  }
}

