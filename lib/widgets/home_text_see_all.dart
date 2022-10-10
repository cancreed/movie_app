import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';

class TextButtonSeeAll extends StatelessWidget {
  const TextButtonSeeAll({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text(text,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ConstStreamingMobile.colorOrange),),
            );
  }
}
