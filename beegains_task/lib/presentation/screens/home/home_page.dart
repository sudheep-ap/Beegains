import 'package:beegains_task/core/api_status.dart';
import 'package:beegains_task/core/common_widgets.dart';
import 'package:beegains_task/presentation/screens/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants.dart';
import '../../../domian/user.dart';
import '../../widgets/enquiry_tile.dart';
import '../../widgets/home_page_skeleton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final _homeBloc = HomeBloc();
  @override
  void initState() {
    super.initState();
    //_homeBloc.add(OnInitialLoadEvent());
    context.read<HomeBloc>().add(OnInitialLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().kBgTealColor,
      appBar: AppBar(
        title: Text(
          'Enquiry List',
          style: TextStyle(
              color: AppColors().kTextWhiteColor,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors().kDarkTealColor,
        actions: [
          IconButton(
              onPressed: () {
                UserFn().logOutUser(context);
              },
              icon: const Icon(Icons.exit_to_app_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.homeEnquiryState == AppStatus.loading) {
                  return const ShimmerEffect(child: HomePageSkeleton());
                } else if (state.homeEnquiryState == AppStatus.success) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount:
                          state.homeEnquiryModel?.data.enquiries.data.length ??
                              0,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            EnquiryTile(
                              id: state.homeEnquiryModel?.data.enquiries
                                  .data[index].id,
                              name: state.homeEnquiryModel?.data.enquiries
                                  .data[index].name,
                              mobileNumber: state.homeEnquiryModel?.data
                                  .enquiries.data[index].primaryMobile,
                              address: state.homeEnquiryModel?.data.enquiries
                                  .data[index].address,
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                        color: AppColors().kBlueGreyColor,
                      ),
                    )),
                  );
                } else if (state.homeEnquiryState == AppStatus.failure) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 45.0),
                    child: Center(
                        child: Text(
                      'Oops !\n Something went wrong \n Please try again',
                      style: TextStyle(
                          fontSize: 18, color: AppColors().kTextGreyColor),
                    )),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        )),
      ),
    );
  }
}
