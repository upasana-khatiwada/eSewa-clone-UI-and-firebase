import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/automatic_slideshow.dart';
import '../components/slider2.dart';
import '../consts/colors.dart';
import '../consts/lists.dart';
import '../home.dart';
import 'main_container.dart';
import 'services_container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5),
          // color: Colors.blue,
          // height: 700,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.grey[900]),
          child: Column(
            children: [
              MainContainer(),
            ],
          ),
        ),
        10.heightBox,
        const AutomaticCarousel(),
        //10.heightBox,
        ServicesContainer(
          title: "Popular Services",
          servicesList: popServices,
        ),
        10.heightBox,
        AutomaticCarousel2(
          sliderList: slider,
          imageHeightPercentage: 0.2,
          ratio: 2,
        ),
        // 10.heightBox,
        ServicesContainer(
          title: "Insurance",
          servicesList: insurance,
        ),
        AutomaticCarousel2(
          sliderList: smallAd,
          imageHeightPercentage: 0.07,
          ratio: 5,
        ),
        //listview tile
        Container(
          color: Colors.grey.shade900,
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.card_giftcard,
                  color: whiteColor,
                ),
                title:
                    "Cashback & offers".text.color(whiteColor).size(16).make(),
                subtitle: "View all offers & available promocodes"
                    .text
                    .color(whiteColor)
                    .size(12)
                    .make(),
              ),
              const Divider(color: whiteColor, thickness: 1),
              ListTile(
                leading: const Icon(
                  Icons.contact_support_rounded,
                  color: whiteColor,
                ),
                title: "24x7 help & Support"
                    .text
                    .color(whiteColor)
                    .size(16)
                    .make(),
                subtitle: "Raise a ticket or view progress of your tickets"
                    .text
                    .color(whiteColor)
                    .size(12)
                    .make(),
              ),
            ],
          ),
        ),
        30.heightBox,

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.shade900,
            ),
            onPressed: () {
              // Get.offAll(() => const HomeScreen());
              Get.offAll(() =>  const Home());
            },
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.login,color: whiteColor),
                        )),
                        const SizedBox(width: 10,),              
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Login or Create a new account",
                            style: TextStyle(
                                fontSize: 14,
                                color: whiteColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Cera Pro"),
                          ),
                          "Login with your eSewa ID".text.size(12).color(Colors.white60).make(),
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios,color: whiteColor,)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
