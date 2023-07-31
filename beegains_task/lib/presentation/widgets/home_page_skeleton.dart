// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../core/constants.dart';

class HomePageSkeleton extends StatelessWidget {
  const HomePageSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.72,
          child: ListView.separated(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => const EnquiryTileSkeleton(),
              separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    color: AppColors().kBlueGreyColor,
                  )),
        ),
      ],
    );
  }
}

class EnquiryTileSkeleton extends StatefulWidget {
  const EnquiryTileSkeleton({
    Key? key,
  }) : super(key: key);

  @override
  State<EnquiryTileSkeleton> createState() => _EnquiryTileSkeletonState();
}

class _EnquiryTileSkeletonState extends State<EnquiryTileSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListTile(
          minLeadingWidth: 2,
          tileColor: AppColors().klightGreyColor,
          leading: Icon(
            Icons.person,
            color: AppColors().kIconWhiteColor,
            size: 35,
          ),
          title: Row(
            children: [
              Container(
                  height: 10, width: 200, color: AppColors().kDarkTealColor),
            ],
          ),
          subtitle: Row(
            children: [
              Container(
                  height: 10, width: 100, color: AppColors().kDarkTealColor),
            ],
          ),
        ));
  }
}
