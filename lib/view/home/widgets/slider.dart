import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/constants/colors/app_sizedboxes.dart';
import 'package:flutter/material.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

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
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/3.png',
                    ),
                    fit: BoxFit.fill),
              ),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: const [
              //     Text(
              //       'jkhsdf jkshdgf kjsghdf',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 18.0,
              //       ),
              //     ),

              //     Text(
              //       '1234567890',
              //       style: TextStyle(
              //         color: Colors.amber,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 18.0,
              //       ),
              //       textAlign: TextAlign.center,
              //     ),

              //   ],
              // ),
            );
          },
          itemCount: 14,
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
