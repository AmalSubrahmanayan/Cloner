import 'dart:developer';

import 'package:e_commerce/model/signin_model/signin_model.dart';
import 'package:e_commerce/routes/route_names.dart';
import 'package:e_commerce/service/signin_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInProvider with ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isNotVisible = true;
  bool loading = false;
  bool hiddenPassword = true;

  String? emailValidation(String? value) {
    log('Email validation');
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter correct email';
    } else {
      return null;
    }
  }

  String? passwordValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "please enter your passwoed";
    } else if (value.length < 8) {
      return "To short password";
    } else {
      return null;
    }
  }

  void login(context) async {
    loading = true;
    notifyListeners();
    final SignInModel model = SignInModel(
      email: emailController.text,
      password: passwordController.text,
    );
    log('12');
    await SignInService().loginservice(model).then((value) {
      log('13');
      if (value != null) {
        log('14');
        Navigator.of(context)
            .pushNamedAndRemoveUntil(RouteNames.bottomNavBar, (route) => false);
        loading = false;
        notifyListeners();
        // log(value.toString());
      } else {
        log(value.toString());

        loading = false;
        notifyListeners();
      }
    });
  }

  void googleSignin(context) async {
    loading = true;
    notifyListeners();
    await SignInService().googleSignIn(GoogleSignIn()).then((value) {
      if (value != null) {
        log(value.toString());
        Navigator.of(context)
            .pushNamedAndRemoveUntil(RouteNames.bottomNavBar, (route) => false);
        loading = false;
        notifyListeners();
      } else {
        loading = false;
        notifyListeners();
      }
    });
  }

  void clearControllers() {
    emailController.clear();
    passwordController.clear();
  }

  void togglePasswordView() {
    hiddenPassword = !hiddenPassword;
    notifyListeners();
  }
}
