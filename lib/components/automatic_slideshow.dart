import 'package:carousel_slider/carousel_slider.dart';
import 'package:esewa_clone/consts/colors.dart';
import 'package:esewa_clone/consts/images.dart';
import 'package:flutter/material.dart';

class AutomaticCarousel extends StatefulWidget {
  const AutomaticCarousel({super.key});

  @override
  State<AutomaticCarousel> createState() => _AutomaticCarouselState();
}

class _AutomaticCarouselState extends State<AutomaticCarousel> {
  List images = [
    [imgeSewaCare, "esewa Care", "View More"],
    [imgS1, "Rs 50 maa iPhone 15", "Click Here"],
  ];
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Define a percentage of the screen height for the image
    const double imageHeightPercentage = 0.2;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    images[index][0],
                    fit: BoxFit.fill,
                    width: width,
                    height: screenHeight * imageHeightPercentage,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                    color: Colors.grey.shade900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //images[index][1].text.color(whiteColor).size(14).make(),
                      Text(
                        images[index][1],
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add button onPressed functionality here
                        },
                        //child: "Your Button".text.color(backgroundGreen).make(),
                        child: Text(
                          images[index][2],
                          style: const TextStyle(color: backgroundGreen),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          viewportFraction: 0.9,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          aspectRatio: 2.0,
        ),
      ),
    );
  }
}
