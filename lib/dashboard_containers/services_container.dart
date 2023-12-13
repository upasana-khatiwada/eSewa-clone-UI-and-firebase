import 'package:esewa_clone/dashboard_containers/icon_box_border.dart';
import 'package:flutter/material.dart';

import '../consts/colors.dart';

class ServicesContainer extends StatelessWidget {
  final String title;
  final List<dynamic> servicesList;
  const ServicesContainer(
      {Key? key, required this.title, required this.servicesList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    // Add button onPressed functionality here
                  },
                  //child: "Your Button".text.color(backgroundGreen).make(),
                  child: const Text(
                    "View More",
                    style: TextStyle(color: backgroundGreen),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 170,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: servicesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BoxIconBorder(
                      iconName: servicesList[index][1],
                      iconImage: servicesList[index][0],
                    );
                  }))
        ],
      ),
    );
  }
}
