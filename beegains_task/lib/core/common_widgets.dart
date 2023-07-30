import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'constants.dart';

// Circular Progress Indicator

Widget kLoadingIndicator = Center(
    child: SpinKitDualRing(
  //SpinKitFadingCube SpinKitDualRing SpinKitWave SpinKitThreeBounce SpinKitFadingCircle
  //SpinKitDualRing SpinKitThreeBounce
  color: AppColors().kBgTealColor,
  // size: 50.0,
));
// Linear Progress Indicator
Widget kLinearLoadingIndicator = LinearProgressIndicator(
    color: Colors.green, backgroundColor: AppColors().kMainBlackColor);

Widget kSizedBox20 = const SizedBox(height: 20);
Widget kSizedBox30 = const SizedBox(height: 30);
Widget kSizedBox40 = const SizedBox(height: 40);

//To show linear loading in bottom sheet

void showLinearLoading(context, bool isTouchDimissable, bool isBackNavAllowed) {
  showModalBottomSheet(
      isDismissible: isTouchDimissable,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (ctx) => WillPopScope(
          onWillPop: () async {
            return isBackNavAllowed;
          },
          child: kLinearLoadingIndicator));
}

//To show circular loading

void showCircularLoading(
    context, bool isTouchDimissable, bool isBackNavAllowed) {
  showDialog(
      barrierDismissible: isTouchDimissable,
      context: context,
      builder: (context) => WillPopScope(
            onWillPop: () async {
              return isBackNavAllowed;
            },
            child: WillPopScope(
                onWillPop: () async {
                  return isBackNavAllowed;
                },
                child: kLoadingIndicator),
          ));
}
