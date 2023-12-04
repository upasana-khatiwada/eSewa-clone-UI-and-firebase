import 'package:esewa_clone/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyIcons extends StatelessWidget {
  final image;
  final String title;
  const MyIcons({super.key, this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                image,
                width: 30,
                fit: BoxFit.contain,
                color: const Color.fromARGB(255, 69, 175, 72),
                
              ),
            ),
            8.heightBox,
            Align(
                alignment: Alignment.center,
                child: title.text.size(12).color(whiteColor).make()),
            8.heightBox,
          ],
        ),
      ),
    );
  }
}
