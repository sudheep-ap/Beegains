// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../core/constants.dart';

class HomePageSkeleton extends StatelessWidget {
  const HomePageSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.72,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => const EnquiryTileSkeleton(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 30,
              ),
            ),
          ),
        ],
      ),
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
      padding: const EdgeInsets.fromLTRB(10, 18, 10, 10),
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 10,
                              width: 50,
                              color: AppColors().klightGreyColor),
                          const SizedBox(
                            width: 5,
                          ),
                          const SizedBox()
                        ],
                      ),
                      const SizedBox(height: 9),
                      Container(
                          height: 10,
                          width: 150,
                          color: AppColors().klightGreyColor),
                      const SizedBox(height: 10),
                      Container(
                          height: 9,
                          width: 150,
                          color: AppColors().klightGreyColor),
                      const SizedBox(height: 10),
                      Container(
                          height: 9,
                          width: 150,
                          color: AppColors().klightGreyColor),
                      const SizedBox(height: 8),
                      Container(
                          height: 9,
                          width: 100,
                          color: AppColors().klightGreyColor),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
