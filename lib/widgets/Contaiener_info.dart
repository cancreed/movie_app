
import 'package:flutter/material.dart';
import 'package:flutter_application_2/const/const_streaming_mobile.dart';

class ContainerFamousImage extends StatelessWidget {
  const ContainerFamousImage({
    Key? key, required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /5,
      height: MediaQuery.of(context).size.height /10,
      decoration: BoxDecoration(color: Colors.white,borderRadius: ConstStreamingMobile.borderRadius20),
      child: ClipRRect( borderRadius: BorderRadius.circular(20), child: Image.asset(image,fit: BoxFit.fill,)),
    );
  }
}
