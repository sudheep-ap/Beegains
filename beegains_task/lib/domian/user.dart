import 'package:beegains_task/data/db/functions/db_functions.dart';
import 'package:flutter/material.dart';
import '../core/common_functions.dart';
import '../core/constants.dart';
import '../presentation/screens/login/sign_in_page.dart';

//Basic user functionalities

class UserFn {
//To log out user
  logOutUser(context) async {
    await LocalDatabase().clearUserDetails();
    showSnackBar(
        context, 'Logged out successfully', AppColors().kSnackBarSuccessColor);
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SignInPage()),
        (Route<dynamic> route) => false);
  }
}
