import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';

class TittleTextHome extends StatelessWidget {
  const TittleTextHome({
    super.key, required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline6?.copyWith(color: ConstStreamingMobile.colorWhite));
  }
}