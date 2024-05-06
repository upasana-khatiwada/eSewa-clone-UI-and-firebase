import 'package:esewa_clone/auth/screens/phone_signin_screen.dart';
import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:esewa_clone/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creatinng a method to change screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getX
      //if we are logged in go to home otherwise go to loginscreen
      // auth.authStateChanges().listen((User? user) {
      //   if (user == null && mounted) {
      //     Get.to(() => const LoginScreen());
      //   }else{
      //     Get.to(()=> const Home());
      //   }
      // });
      Get.to(()=> const PhoneSignInScreen());
    });
  }
    //to start or execute
  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundGreen,
      body: Center(
        child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 100,
                  child: Image.asset(
                    imgeSewaDark,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              10.heightBox,
              appversion.text.white.make(),
              const Spacer(),
              // 30.heightBox,
              const Text(
                'made by : Upasana',
                style:
                    TextStyle(color: whiteColor, fontFamily: 'sans_semibold'),
              ),
              30.heightBox,
            ]),
      ),
    );
  }
}
