import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:e_commerce/view/item_page/item_page.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1 / 1.6,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 10; i++)
          Container(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "-50%",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      color: AppColors.blueColor,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    // go to itempahe
                    // Navigator.pushNamed(context, "ItemPage");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemPage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/watch.png",
                      height: 90,
                      width: 90,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Prodect Title",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.buttonColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "A watch is a portable timepiece intended to be carried or worn by a person.",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.blueColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "\$50",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blueColor),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout_outlined,
                        color: AppColors.blueColor,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
