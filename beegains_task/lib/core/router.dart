import 'package:beegains_task/presentation/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import '../presentation/screens/login/sign_in_page.dart';

Map<String, Widget Function(BuildContext)> router = {
  '/loginPage': (context) => const SignInPage(),
  '/HomePage': (context) => const HomePage(),
};
