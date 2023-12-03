import 'package:esewa_clone/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyIcons extends StatelessWidget {
  final image;
  final String title;
  const MyIcons({super.key, this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            image,
            width: 30,
            fit: BoxFit.contain,
            color: whiteColor,
          ),
        ),
        5.heightBox,
        Align(
            alignment: Alignment.center,
            child: title.text.color(whiteColor).make()),
        10.heightBox,
      ],
    );
  }
}
