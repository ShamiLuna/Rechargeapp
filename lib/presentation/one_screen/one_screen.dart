import 'controller/one_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OneScreen extends GetWidget<OneController> {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.h, vertical: 60.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 259.v,
                                            width: 236.h,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8.h,
                                                vertical: 23.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        ImageConstant
                                                            .imgSitter),
                                                    fit: BoxFit.cover)),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup303,
                                                height: 202.adaptSize,
                                                width: 202.adaptSize,
                                                alignment: Alignment.topLeft))),
                                    SizedBox(height: 52.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 299.h,
                                            margin: EdgeInsets.only(right: 5.h),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_experience_the"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .displayMediumRobotoffffffff),
                                                  TextSpan(
                                                      text: "lbl_easier_way".tr,
                                                      style: CustomTextStyles
                                                          .displayMediumRobotoffa456f6
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)),
                                                  TextSpan(
                                                      text:
                                                          "msg_for_transaction"
                                                              .tr,
                                                      style: CustomTextStyles
                                                          .displayMediumRobotoffffffff)
                                                ]),
                                                textAlign: TextAlign.left))),
                                    SizedBox(height: 54.v),
                                    Container(
                                        width: 249.h,
                                        margin: EdgeInsets.only(
                                            left: 24.h, right: 72.h),
                                        child: Text("msg_connect_your_money".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleLargeRoboto)),
                                    SizedBox(height: 63.v),
                                    CustomElevatedButton(
                                        text:
                                            "lbl_get_started".tr.toUpperCase(),
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 30.h),
                                        buttonTextStyle:
                                            CustomTextStyles.titleSmallRoboto_1,
                                        onPressed: () {
                                          navitoregis();
                                        },
                                        alignment: Alignment.center),
                                    SizedBox(height: 11.v)
                                  ]))))
                ]))));
  }

  /// Navigates to the twoScreen when the action is triggered.
  navitoregis() {
    Get.offNamed(
      AppRoutes.twoScreen,
    );
  }
}
