import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ListWidgets extends StatelessWidget {
  const ListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          ListTile(
            leading: Icon(
              Icons.person_outlined,
              color: AppColors.whiteColor,
              size: 25,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
              ),
            ),
            
          ),
          //2
          ListTile(
            leading: Icon(
              Icons.shopping_bag_outlined,
              color: AppColors.whiteColor,
              size: 25,
            ),
            title: Text(
              'Order',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
              ),
            ),
            
          ),
          //3
          ListTile(
            leading: Icon(
              Icons.location_on_outlined,
              color: AppColors.whiteColor,
              size: 25,
            ),
            title: Text(
              'Address',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
              ),
            ),
            
          ),
          //4
          ListTile(
            leading: Icon(
              Icons.payment_rounded,
              color: AppColors.whiteColor,
              size: 25,
            ),
            title: Text(
              'Payment',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
              ),
            ),
           
          ),
        ],
      ),
    );
  }
}
