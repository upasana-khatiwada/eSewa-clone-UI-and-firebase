import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:flutter/material.dart';

import '../../components/custombutton.dart';

class PhoneSignInScreen extends StatefulWidget {
  static const routeName = '/signin-screen';
  const PhoneSignInScreen({super.key});

  @override
  State<PhoneSignInScreen> createState() => _PhoneSignInScreenState();
}

class _PhoneSignInScreenState extends State<PhoneSignInScreen> {
  final phoneController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset(
      //     imgeSewaLogoWhiteText,
      //     // width: 160,
      //     // height: 80,
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Image.asset(
              imgeSewaLogoWhiteText,
              width: 180,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 28,
                      color: whiteColor,
                    ),
                  ),
                  const Text(
                      'eSewa requires your mobile number to register your device as an additional security measure.'),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  const Text(
                    'Mobile Number',
                    style: TextStyle(fontSize: 12, color: whiteColor),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    // color: Color.fromRGBO(6, 34, 48, 1),

                    width: size.width * 0.76,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(12.0), // Circular border
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(6, 34, 48, 1),
                        hintText: 'Mobile Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.1),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: size.width * 0.84,
                child: CustomButton(
                  onPressed: () {},
                  text: 'SUBMIT',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
