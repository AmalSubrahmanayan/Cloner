import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:e_commerce/view/item_page/widgets/item_app_bar.dart';
import 'package:e_commerce/view/item_page/widgets/itembottom_nav_bar.dart';
import 'package:e_commerce/view/item_page/widgets/page1.dart';
import 'package:e_commerce/view/item_page/widgets/page3.dart';
import 'package:e_commerce/view/item_page/widgets/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/page2.dart';

class ItemPage extends StatelessWidget {
  ItemPage({super.key});

 final List<Color> clrs = [
    Colors.red,
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.purple,
  ];

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ItemAppBar(),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: PageView(
                  controller: controller,
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: SwapEffect(
                      activeDotColor: AppColors.blueColor,
                      dotColor: Colors.grey.withOpacity(0.5),
                      dotHeight: 9,
                      dotWidth: 9),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                // color: Colors.green,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "product Name",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Our design consulting experts can help create a modern office which inspires your people. We don't just create office buildings, we can create the future of work for you. Eco friendly Office space. New Office Space Looks. Smart Office Designs. Best Workplace Designs.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[800],
                            ),
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    // color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        // offset(0, 3),
                                      ),
                                    ]),
                                child: const Icon(
                                  Icons.favorite,
                                  color: AppColors.redColor,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Size: ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 5; i < 10; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: AppColors.blueColor,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ]),
                                  child: Text(
                                    i.toString(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.whiteColor),
                                  ),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Color: ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: clrs[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ]),
                                )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const ItemBottomNavBar(),
      ),
    );
  }
}
