import 'package:esewa_clone/consts/images.dart';
import 'package:esewa_clone/dashboard_containers/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BalanceContainer extends StatefulWidget {
  const BalanceContainer({super.key});

  @override
  State<BalanceContainer> createState() => _BalanceContainerState();
}

class _BalanceContainerState extends State<BalanceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        //color: Colors.amber,
      ),
      width: MediaQuery.of(context).size.width / 1.12,
      height: 125,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyIcons(
                  image: icLoadMoney,
                  title: "Load\nMoney",
                ),
                5.widthBox,
                const MyIcons(
                  image: icSendMoney,
                  title: "Send\nMoney",
                ),
                5.widthBox,
                const MyIcons(
                  title: "Bank\nTransfer",
                  image: icBankTransfer,
                ),
                5.widthBox,
                const MyIcons(
                  title: "Remittance",
                  image: icRemmitance,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
