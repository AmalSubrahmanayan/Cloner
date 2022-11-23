import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 5; i++)
          Column(
            children: [
              Slidable(
                endActionPane: ActionPane(
                    motion: const BehindMotion(),
                    extentRatio: 0.25,
                    children: [
                      SlidableAction(
                        padding: EdgeInsets.zero,
                        // padding: EdgeInsets.symmetric(vertical: 10),
                        label: "Delete",
                        icon: Icons.delete,
                        backgroundColor: AppColors.blueColor,
                        foregroundColor: AppColors.redColor[400],
                        spacing: 4,
                        borderRadius: BorderRadius.circular(20),
                        onPressed: (context) => {},
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 120,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        // Radio(
                        //   value: "",
                        //   groupValue: "",
                        //   activeColor: Colors.black,
                        //   onChanged: (index) {},
                        // ),
                        Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.only(right: 15),
                          child: Image.asset("assets/images/watch1.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Prodect Title",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blueColor),
                              ),
                              Text(
                                "\$55",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.greenColor),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 37, horizontal: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Icon(
                              //   Icons.delete,
                              //   color: Colors.red,
                              // ),
                              // Spacer(),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 10,
                                          )
                                        ]),
                                    child: const Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const Text(
                                      "01",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 10,
                                          )
                                        ]),
                                    child: const Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
      ],
    );
  }
}
