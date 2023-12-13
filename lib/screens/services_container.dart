import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/lists.dart';
import 'package:esewa_clone/components/icon_box_border.dart';
import 'package:flutter/material.dart';

class ServicesContainer extends StatelessWidget {
  final String title ;
 const ServicesContainer({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: containerColor,
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
              child: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: popServices.length,
                    itemBuilder: (BuildContext context, int index) {
                      return BoxIconBorder(
                        
                         iconName: popServices[index][1],
                         iconImage: popServices[index][0],
        
                      );
                    }))
          ],
        ),
      ),
    );
  }
}