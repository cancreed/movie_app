
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';

class TextMovieCommandSmall extends StatelessWidget {
  const TextMovieCommandSmall({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[300]));
  }
}

