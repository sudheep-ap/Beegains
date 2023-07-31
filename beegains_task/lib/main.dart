import 'package:beegains_task/presentation/screens/home/bloc/home_bloc.dart';
import 'package:beegains_task/presentation/screens/home/home_page.dart';
import 'package:beegains_task/presentation/screens/login/bloc/login_bloc.dart';
import 'package:beegains_task/presentation/screens/login/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/router.dart';
import 'data/db/functions/db_functions.dart';

String custUserToken = '';
String custUserName = '';
void main() async {
  await LocalDatabase().dataBaseInitialise();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
      BlocProvider<HomeBloc>(create: (context) => HomeBloc()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BeegainsApp(),
      routes: router,
    ),
  ));
}

class BeegainsApp extends StatelessWidget {
  const BeegainsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return custUserToken.isEmpty ? const SignInPage() : const HomePage();
  }
}









        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
        //     BlocProvider<HomeBloc>(create: (context) => HomeBloc()),
        //   ],
        //   child:
        // BlocProvider(
        // create: (context) => LoginBloc(),
        // child:
           //);--
    // );