import 'package:esewa_clone/screens/homescreen/homescreen_appbar.dart';
import 'package:esewa_clone/screens/homescreen/comonents/show_balance.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../dashboard_containers/balance_container.dart';
import '../../dashboard_containers/dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              //appbar---------------
              Stack(
                children: [
                  Container(
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
                    const HomeScreenAppbar(),

                  Positioned(
                      top: 63,
                      left: 11,
                      // right: 1,
                      //showbalance bar------------------------------------
                      //Load money ,send money bar..................................
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                            ),
                            child: const Row(),
                          ),
                          const ShowBalanceContainer(),
                          const BalanceContainer(),

                        ],
                      ),
                    ),
                ],
              ),
              10.heightBox,
              //Main Container having icons-----------------------------
                const Dashboard(),
            ],
          ),
        )),
      ),
    );
  }
}
