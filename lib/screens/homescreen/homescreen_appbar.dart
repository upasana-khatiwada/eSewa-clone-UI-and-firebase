import 'package:esewa_clone/screens/homescreen/components/search_products.dart';
import 'package:esewa_clone/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/images.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({super.key});

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
              onPressed: () {
                Get.offAll(() => const ProfileScreen());
              },
              child: "Hi, UPASANA".text.color(whiteColor).size(16).make()),
        ),
        5.widthBox,
        GestureDetector(
          onTap: () {
            Get.offAll(() => const SearchScreen());
          },
          child: const Icon(
            Icons.search,
            color: whiteColor,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.notifications,
            color: whiteColor,
          ),
        ),

        const Icon(
          Icons.more_vert,
          color: whiteColor,
        ),
      ],
    );
  }
}
