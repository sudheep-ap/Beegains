import 'package:beegains_task/core/api_status.dart';
import 'package:beegains_task/data/db/functions/db_functions.dart';
import 'package:beegains_task/presentation/screens/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/home/home_repository.dart';
import '../../../data/repository/login/login_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeBloc = HomeBloc();
  @override
  void initState() {
    super.initState();
    _homeBloc.add(OnInitialLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enquiry List'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                LoginRepositoryImp().userLogOut(context);
              },
              icon: const Icon(Icons.exit_to_app_sharp))
        ],
      ),
      body: Center(
          child: Column(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.homeEnquiryState == AppStatus.initial) {
                return Container(child: Text('Shimmer'));
              } else if (state.homeEnquiryState == AppStatus.success) {
                return Container(child: Text('success'));
              } else if (state.homeEnquiryState == AppStatus.failure) {
                return Container(child: Text('Failed to load data'));
              } else {
                return Container(
                  child: Text('Something went wrong'),
                );
              }
            },
          ),
        ],
      )),
    );
  }
}
