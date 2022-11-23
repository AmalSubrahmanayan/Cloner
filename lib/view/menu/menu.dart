import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(223, 3, 15, 82),
        // body: SizedBox(
        //   width: double.infinity,
        //   height: double.infinity,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Container(
        //           width: double.infinity,
        //           decoration: const BoxDecoration(
        //             borderRadius: BorderRadiusDirectional.only(
        //               bottomEnd: Radius.circular(80),
        //               bottomStart: Radius.circular(80),
        //             ),
        //             color: Colors.white,
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: const [
        //               Padding(
        //                 padding: EdgeInsets.all(8.0),
        //                 child: Text(
        //                   "Account",
        //                   style: TextStyle(
        //                     color: AppColors.blueColor,
        //                     fontSize: 32,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //               AppSizedBoxes.sizedboxH20,
        //             ],
        //           ),
        //         ),
                
        //         AppSizedBoxes.sizedboxH20,

        //         // calling the list
        //         const ListWidgets(),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
