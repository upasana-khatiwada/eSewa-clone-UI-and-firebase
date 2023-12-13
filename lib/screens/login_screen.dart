import 'package:esewa_clone/components/automatic_slideshow.dart';
import 'package:esewa_clone/dashboard_containers/balance_container.dart';
import 'package:esewa_clone/dashboard_containers/main_container.dart';
import 'package:esewa_clone/dashboard_containers/my_appbar.dart';
import 'package:esewa_clone/components/slider2.dart';
import 'package:esewa_clone/consts/lists.dart';
import 'package:esewa_clone/dashboard_containers/services_container.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              children: [
                //appbar------------
                Stack(
                  children: [
                    Container(
                      //color: Colors.pink,
                      height: 176,
                    ),
                    Container(
                      height: 141,
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    const MyAppBar(),
                    const Positioned(
                      top: 63,
                      left: 11,
                      // right: 1,
                      //Load money ,send money bar..................................
                      child: BalanceContainer(),
                    ),
                  ],
                ),
                10.heightBox,
                //Main Container having icons
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  // color: Colors.blue,
                  // height: 700,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[900]),
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
                 AutomaticCarousel2(sliderList: slider,),
               // 10.heightBox,
                ServicesContainer(
                  title: "Popular Services",
                  servicesList: insurance,
                ),
                AutomaticCarousel2(sliderList: smallAd),
                //listview tile 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// CustomScrollView(
//         slivers: [
//           SliverAppBar(
//               automaticallyImplyLeading: false,
//               backgroundColor: Colors.grey,
//               floating: true,
//               expandedHeight: MediaQuery.of(context).size.height * 0.1,
//               flexibleSpace: FlexibleSpaceBar(
//                 background: Padding(
//                   padding: const EdgeInsets.only(left: 15,top: 15,right: 10),
//                   child: Stack(
//                     children: [
//                       const Align(
//                         alignment: Alignment.topLeft,
//                         child: Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: CircleAvatar(
//                             backgroundColor: Colors.blueGrey,
//                             child: Icon(
//                               Icons.person,
//                               color: whiteColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.topCenter,
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 18.0),
//                           child: Container(
//                             child: "Login/Register"
//                                 .text
//                                 .fontFamily(fontBold)
//                                 .white
//                                 .size(18)
//                                 .make(),
//                           ),
//                         ),
//                       ),
//                       const Padding(
//                           padding: EdgeInsets.only(top: 18.0),
//                         child: Align(
//                           alignment: Alignment.topRight,
//                           child: Icon(
//                             Icons.more_vert_rounded,
//                             color: whiteColor,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )),
              
//         ],
//       )
