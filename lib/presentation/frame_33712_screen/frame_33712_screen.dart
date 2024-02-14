
import 'controller/frame_33712_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class Frame33712Screen extends GetWidget<Frame33712Controller> {
  const Frame33712Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 385.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                            height: 100,
                              width: 100,
                              padding: EdgeInsets.symmetric(vertical: 60.v),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSitter,
                                    height: 259.v,
                                    width: 236.h),
                                SizedBox(height: 56.v),
                                Text("lbl_charge_karo".tr,
                                    style: theme.textTheme.displayMedium),
                                SizedBox(height: 56.v)
                              ]))))
                ]))));
  }
}
