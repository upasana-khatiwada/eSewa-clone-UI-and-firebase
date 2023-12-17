import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:esewa_clone/screens/homescreen/home_screen.dart';
import 'package:esewa_clone/screens/more_screen.dart';
import 'package:esewa_clone/screens/statement_screen.dart';
import 'package:esewa_clone/screens/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'consts/strings.dart';
import 'controller/homecontroller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //init home controller

    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            ichome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icstatement,
            width: 26,
          ),
          label: statement),
      BottomNavigationBarItem(
          icon: Image.asset(
            icsupport,
            width: 26,
          ),
          label: support),
      BottomNavigationBarItem(
          icon: Image.asset(
            icmore,
            width: 26,
          ),
          label: more),
    ];
    var navBody = [
      const HomeScreen(),
      const StatementScreen(),
      const SupportScreen(),
      const MoreScreen(),
    ];
    return Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(
                  child: navBody.elementAt(controller.currentNavIndex.value),
                )),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: backgroundGreen,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navbarItem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ));
  }
}
