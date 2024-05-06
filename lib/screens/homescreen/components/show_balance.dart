import 'package:esewa_clone/consts/colors.dart';
import 'package:flutter/material.dart';

class ShowBalanceContainer extends StatefulWidget {
  const ShowBalanceContainer({super.key});

  @override
  State<ShowBalanceContainer> createState() => _ShowBalanceContainerState();
}

class _ShowBalanceContainerState extends State<ShowBalanceContainer> {
  bool isShow = false;

  void showNum() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width / 1.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
       // color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 22,
                      //color: Colors.green,
                      color: whiteColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          const TextSpan(
                              text: " NPR ",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                          isShow
                              ? const TextSpan(
                                  text: "509.04",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white))
                              : const TextSpan(
                                  text: "XXXX.XX",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                        ])),
                        const Text("Balance",
                            style: TextStyle(fontSize: 11, color: Colors.white))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                   width: 30,
                 
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(50)),
                  child: GestureDetector(
                    onTap: showNum,
                    child: isShow
                        ? Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey[700],
                            size: 20,
                          )
                        : Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey[700],
                            size: 20,
                          ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    
                    const Icon(
                      Icons.stars_rounded,
                      size: 22,
                      // color: Colors.green,
                      color: whiteColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        isShow
                            ? const Text(
                                "809.3",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            : const Text(
                                "XXXX.XX",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                        const Text(
                          "Reward Points",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )
                      ],
                    ),
                    
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
