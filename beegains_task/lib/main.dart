import 'package:beegains_task/presentation/screens/login/bloc/login_bloc.dart';
import 'package:beegains_task/presentation/screens/login/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/db/functions/db_functions.dart';

String custUserToken = '';
String custUserName = '';
void main() async {
  await LocalDatabase().dataBaseInitialise();
  runApp(const MaterialApp(
    home: BeegainsApp(),
  ));
}

class BeegainsApp extends StatelessWidget {
  const BeegainsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
        //   ],
        //   child:
        BlocProvider(
      create: (context) => LoginBloc(),
      child: const SignInPage(),
    );
    // );
  }
}
