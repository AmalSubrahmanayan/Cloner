import 'package:e_commerce/controller/bottom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:e_commerce/controller/otp/otp_screen_controller.dart';
import 'package:e_commerce/controller/reset_password/reset_password_controller.dart';
import 'package:e_commerce/controller/sign_In/signin_controller.dart';
import 'package:e_commerce/controller/sign_up/signup_controller.dart';
import 'package:e_commerce/routes/route_functions.dart';
import 'package:e_commerce/view/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/forgot_password/forgot_password_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => SignUpProvider())),
        ChangeNotifierProvider(create: ((context) => SignInProvider())),
        ChangeNotifierProvider(create: ((context) => ForgotPasswordProvider())),
        ChangeNotifierProvider(create: (context) => ResetPasswordProvider()),
        ChangeNotifierProvider(create: ((context) => BottomNavBarProvider())),
        ChangeNotifierProvider(create: ((context) => OtpScreenProvider())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        onGenerateRoute: (settings) => AppRoutes.generateRoute(settings),
      ),
    );
  }
}
