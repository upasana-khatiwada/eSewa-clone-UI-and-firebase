import 'package:esewa_clone/components/my_icons.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  MainContainer({super.key});

  List iconList = [
    [icTopup, "Topup"],
    [icElectricity, "Electricity"],
    [icKhanepani, "Khanepani"],
    [iceSewaCare, "eSewa Care"],
    [icInternet, "Internet"],
    [icAirlines, "Airlines"],
    [icIntlAirlines, "Intl Airlines"],
    [icRequestMoney, "Request\nMoney"],
    [icHotels, "Hotels"],
    [icGovtPayment, "   Govt\nPayment"],
    [icCableCar, "Cable Car"],
    [icSahakariDeposit, "Sahakari\nDeposit"],
    [icTV, "TV"],
    [icCollegeFee, "Education\n     Fee"],
    [icinsurance, "Insurance"],
    [icatm, "    ATM\n Withdraw"],
    [icFinancialServices, "Financial\nServices"],
    [icHealth, "Health"],
    [icBusTicket, "Bus Ticket"],
    [icmovie, "Movies"],
    [icVotingEvents, "Voting &\nEvents"],
    [icOnlinePayment, "Online\nPayment"],
    [icantivirus, "Antivirus"],
    [icCommunityElectricity, "Community\nElectricity"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: MediaQuery.of(context).size.height / 1.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[900]),
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: iconList.length,
          itemBuilder: (BuildContext context, index) {
            return MyIcons(
                image: iconList[index][0], title: iconList[index][1]);
          }),
    );
  }
}
