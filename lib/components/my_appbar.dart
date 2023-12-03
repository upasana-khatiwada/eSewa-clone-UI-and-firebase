import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // 2.widthBox,
          CircleAvatar(
            backgroundColor: darkFontGrey,
            radius: 25,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset(
                icaccounticon,
                fit: BoxFit.contain,
                color: whiteColor,
              ),
            ),
          ),
          5.widthBox,
          "Login/Register".text.color(whiteColor).size(20).make(),
          15.widthBox,

          const Icon(
            Icons.more_vert,
            color: whiteColor,
          ),
        ],
      ),
    );
  }
}
