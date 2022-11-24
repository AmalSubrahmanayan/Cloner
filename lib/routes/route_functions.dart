import 'package:e_commerce/model/otp/otp_arguement_model.dart';
import 'package:e_commerce/model/resetpasswordmodel/resetpasswordmodel.dart';
import 'package:e_commerce/routes/route_names.dart';
import 'package:e_commerce/view/account/profile.dart';
import 'package:e_commerce/view/bottom_nav/bottom_nav.dart';
import 'package:e_commerce/view/home/home.dart';
import 'package:e_commerce/view/item_page/item_page.dart';
import 'package:e_commerce/view/otp/otp_verification.dart';
import 'package:e_commerce/view/reset_password/reset_password.dart';
import 'package:e_commerce/view/sign_in/sign_in.dart';
import 'package:e_commerce/view/sign_up/signup.dart';
import 'package:e_commerce/view/splash/splash.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteNames.signup:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case RouteNames.resetPassword:
        final args = settings.arguments as ResetPasswordModel;
        return MaterialPageRoute(
          builder: (context) => ResetPassword(
            model: args.model,
          ),
        );
      case RouteNames.otpScreen:
        final args = settings.arguments as OtpArguementModel;
        return MaterialPageRoute(
          builder: (context) => OtpScreen(
            model: args.model,
            screenChecking: args.checkScreen,
          ),
        );
      case RouteNames.signin:
        return MaterialPageRoute(
          builder: (context) => const SignIn(),
        );
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        );
      case RouteNames.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );
      case RouteNames.itemPage:
        return MaterialPageRoute(
          builder: (context) => ItemPage(),
        );
      case RouteNames.profile:
        return MaterialPageRoute(
          builder: (context) => const Profile(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
