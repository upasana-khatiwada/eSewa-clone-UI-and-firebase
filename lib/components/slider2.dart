import 'package:carousel_slider/carousel_slider.dart';
import 'package:esewa_clone/consts/lists.dart';
import 'package:flutter/material.dart';

class AutomaticCarousel2 extends StatefulWidget {
  const AutomaticCarousel2({super.key});

  @override
  State<AutomaticCarousel2> createState() => _AutomaticCarousel2State();
}

class _AutomaticCarousel2State extends State<AutomaticCarousel2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      child: CarouselSlider.builder(
        itemCount: slider.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image.asset(
                    slider[index],
                    fit: BoxFit.fill,
                    width: width,
                     height: 210.0,
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
        ),
      ),
    );
  }
}
