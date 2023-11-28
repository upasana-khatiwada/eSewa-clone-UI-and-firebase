import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.grey,
              floating: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.1,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15,right: 10),
                  child: Stack(
                    children: [
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            child: Icon(
                              Icons.person,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            child: "Login/Register"
                                .text
                                .fontFamily(fontBold)
                                .white
                                .size(18)
                                .make(),
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 18.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.more_vert_rounded,
                            color: whiteColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
              
        ],
      ),
    );
  }
}
