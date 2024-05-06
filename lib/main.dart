import 'package:esewa_clone/auth/screens/registration_screen/signup_page.dart';
import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/strings.dart';
import 'package:esewa_clone/router.dart';
import 'package:esewa_clone/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          //to save app bar icons every color to darkFontGrey by default
          iconTheme: IconThemeData(color: darkFontGrey),
          backgroundColor: Colors.transparent,
        ),
        //fontFamily: "sans_regular",
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const SignUpPage(),
    );
  }
}
