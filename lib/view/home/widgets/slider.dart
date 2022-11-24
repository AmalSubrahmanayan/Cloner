import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/constants/colors/app_sizedboxes.dart';
import 'package:e_commerce/model/home/home_carousal.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key, required this.carousal});
  final List<CarousalModel> carousal;

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSizedBoxes.sizedboxH10,
        CarouselSlider.builder(
          itemBuilder: (context, index, realIndex) {
            log(widget.carousal[index].image);
            return Center(
              child: Image(
                  image: NetworkImage(
                      "http://172.16.1.179:5005/carousals/${widget.carousal[index].image}")),
            );
          },
          itemCount: widget.carousal.length,
          options: CarouselOptions(
            height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayInterval: const Duration(seconds: 3),
          ),
        ),
      ],
    );
  }
}
