import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:e_commerce/constants/colors/app_sizedboxes.dart';
import 'package:e_commerce/controller/home/home_controller.dart';
import 'package:e_commerce/utils/loading_widget.dart';
import 'package:e_commerce/view/home/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/categorieswidget.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/itemwidget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final homeprovider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 0, 3, 20),
      body: SafeArea(
        child: ListView(
          children: [
            const HomeAppBar(),
            Container(
              // height: 200,
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Consumer<HomeProvider>(
                builder: (context, values, _) {
                  return values.loading == true
                      ? const Center(
                          child: LoadingWidget(),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Search widget
                            // Container(
                            //   margin:
                            //       const EdgeInsets.symmetric(horizontal: 15),
                            //   padding:
                            //       const EdgeInsets.symmetric(horizontal: 15),
                            //   height: 50,
                            //   decoration: BoxDecoration(
                            //       color: Colors.grey[200],
                            //       borderRadius: BorderRadius.circular(30)),
                            //   child: Row(
                            //     children: [
                            //       Container(
                            //         margin: const EdgeInsets.only(left: 50),
                            //         height: 50,
                            //         width: 200,
                            //         child: TextFormField(
                            //           decoration: const InputDecoration(
                            //             border: InputBorder.none,
                            //             hintText: "Search here..",
                            //           ),
                            //         ),
                            //       ),
                            //       const Spacer(),
                            //       const Icon(
                            //         Icons.search,
                            //         size: 27,
                            //         color: AppColors.buttonColor,
                            //       )
                            //     ],
                            //   ),
                            // ),

                            //slider

                            
                            AppSizedBoxes.sizedboxH20,
                             CarouselSliderWidget(
                              carousal:values.carousalList,
                             ),
                            AppSizedBoxes.sizedboxH10,


                            // categories
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 10,
                              ),
                              child: const Text(
                                "Categories",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.buttonColor),
                              ),
                            ),
                            // Categories widgets

                            const CategoriesWidget(),

                            // Items

                            Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              child: const Text(
                                "Best Selling",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.buttonColor,
                                ),
                              ),
                            ),
                            //  ItemWidget
                            const ItemWidget(),
                          ],
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
