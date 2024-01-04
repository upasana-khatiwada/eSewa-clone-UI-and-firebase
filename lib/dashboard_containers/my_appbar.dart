import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../home.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
        // 5.widthBox,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: (){
               Get.offAll(() =>  const Home());
            },
            child: "Login/Register".text.color(whiteColor).size(20).make()),
        ),
        15.widthBox,
    
        const Icon(
          Icons.more_vert,
          color: whiteColor,
        ),
      ],
    );
  }
}
