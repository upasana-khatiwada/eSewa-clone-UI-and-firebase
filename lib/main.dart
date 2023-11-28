import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/strings.dart';
import 'package:esewa_clone/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          //to save app bar icons every color to darkFontGrey by default
          iconTheme: IconThemeData(color: darkFontGrey),
          backgroundColor: Colors.transparent,
        ),
        fontFamily: "sans_regular",
      ),
      home: const SplashScreen(),
    );
  }
}
