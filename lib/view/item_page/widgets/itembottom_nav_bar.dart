import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:e_commerce/controller/item_page/item_page_controller.dart';
import 'package:e_commerce/controller/item_page/razorpay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<ItemProvider>(context);
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  const Text(
            //   // '₹${product!.price}',
            //   'Rs 9009',
            //   style: TextStyle(
            //     fontSize: 25,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),

            //Add to cart
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.cart_badge_plus,
              ),
              label: const Text(
                "Add To Cart",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.buttonColor),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
            //Purchase
            Consumer<PaymentProvider>(
              builder: (context, value, child) =>  ElevatedButton.icon(
                onPressed: () {
                  value.razorpayOption(int.parse(provider.product!.price!.toString()));
                },
                icon: const Icon(
                  CupertinoIcons.shopping_cart,
                ),
                label: const Text(
                  "Purchase",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.buttonColor),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
