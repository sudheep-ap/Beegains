// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../core/constants.dart';

class EnquiryTile extends StatelessWidget {
  final id;
  final name;
  final mobileNumber;
  final address;
  const EnquiryTile(
      {super.key,
      required this.id,
      required this.name,
      required this.mobileNumber,
      required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 2,
      tileColor: AppColors().kListTileColor,
      leading: Icon(
        Icons.person,
        color: AppColors().kIconWhiteColor,
        size: 35,
      ),
      title: Row(
        children: [
          Text(
            id.toString(),
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: AppColors().kTextWhiteColor),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name.toString(),
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: AppColors().kTextWhiteColor),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            mobileNumber.toString(),
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: AppColors().kTextWhiteColor),
          ),
          const SizedBox(width: 15),
        ],
      ),
      trailing: Text(
        address.toString(),
        style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: AppColors().kTextWhiteColor),
      ),
    );
  }
}
