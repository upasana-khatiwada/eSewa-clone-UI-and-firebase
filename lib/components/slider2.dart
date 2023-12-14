import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AutomaticCarousel2 extends StatefulWidget {
  final List<dynamic> sliderList;
  final double imageHeightPercentage;
  final double ratio ;
  const AutomaticCarousel2({super.key, required this.sliderList, required this.imageHeightPercentage, required this.ratio});

  @override
  State<AutomaticCarousel2> createState() => _AutomaticCarousel2State();
}

class _AutomaticCarousel2State extends State<AutomaticCarousel2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
     final double screenHeight = MediaQuery.of(context).size.height;

    // Define a percentage of the screen height for the image
    //const double imageHeightPercentage = 0.3; 

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CarouselSlider.builder(
        itemCount:  widget.sliderList.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image.asset(
                     widget.sliderList[index],
                    fit: BoxFit.fill,
                    width: width,
                     height: screenHeight *  widget.imageHeightPercentage,
                  ),
                ),
              )
            ],
          );
        },
        options: CarouselOptions(
         
          viewportFraction: 1,
          enlargeCenterPage: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          aspectRatio: widget.ratio,
        ),
      ),
    );
  }
}
