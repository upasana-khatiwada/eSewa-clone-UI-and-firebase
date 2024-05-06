import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:flutter/material.dart';

import '../../../components/custombutton.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isMpinVisible = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: blackColor,
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Stack(
              children: [
                //SpiralCircle ----------------
                Positioned(
                  top: -15,
                  left: -50,
                  // right: 1,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      imgSpiralCircle,
                      // width: 40,
                      // height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                //esewa logo -------------------
                Positioned(
                  top: -25,
                  left: -3,
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset(imgeSewaLogoWhiteText),
                  ),
                ),
                //right side dashed circle -----------------
                Positioned(
                  top: -15,
                  right: -50,
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Image.asset(imgDashedCircle),
                  ),
                ),
                //cross icon ---------------------
                Positioned(
                  top: 55,
                  right: 40,
                  child: Container(
                    width: 40,
                    height: 40,
                    // color: backgroundColor,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: backgroundColor,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.clear,
                        color: greenColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        //Welcome text-------------
                        Text(
                          'Welcome',
                          style: TextStyle(color: whiteColor, fontSize: 30),
                        ),
                        Text(
                          'Quick sign with biometric',
                          style: TextStyle(
                            fontSize: 12,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                ///
                ///Main Sign in Container----------------------------
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'eSewa ID',
                              style: TextStyle(color: whiteColor, fontSize: 12),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: containerColor,
                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   // BoxShadow(
                              //   //     color: greenColor,
                              //   //     blurRadius: 20,
                              //   //     offset: Offset(0, 10))
                              // ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Phone number",
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'MPIN/Password',
                              style: TextStyle(color: whiteColor, fontSize: 12),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: containerColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextFormField(
                                obscureText: !isMpinVisible,
                                decoration: InputDecoration(
                                    hintText: "Your 4-digit MPIN/Password",
                                    hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isMpinVisible = !isMpinVisible;
                                        });
                                      },
                                      icon: Icon(
                                        isMpinVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: rememberMe,
                                    onChanged: (value) {
                                      setState(() {
                                        rememberMe = value!;
                                      });
                                    },
                                    activeColor: greenColor,
                                  ),
                                  const Text(
                                    'Remember Me',
                                    style: TextStyle(color: whiteColor),
                                  ),
                                ],
                              ),
                              const Text(
                                'Forget MPIN?',
                                style: TextStyle(color: whiteColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: size.width * 0.84,
                              child: CustomButton(
                                onPressed: () {},
                                text: 'Login',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.09,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: greyColor),
                            ),
                            child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: greenColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '24x7 Help and support\nGet quicksolutions for eSewa-related queries',
                                      style: TextStyle(
                                          color: whiteColor, fontSize: 12),
                                    ),
                                  ],
                                )),
                          ),
                          const SizedBox(height: 10,),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Register',
                                style: TextStyle(color: greenColor),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
