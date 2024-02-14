import 'controller/one_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class OneScreen extends GetWidget<OneController> {
  const OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 1000.v,
                width: 395.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.h, vertical: 6.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 229.v,
                                            width: 210.h,
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
                                    SizedBox(height: 57.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 180,
                                            width: 299.h,
                                            margin: EdgeInsets.only(right: 15.h),
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
                                    SizedBox(height: 4.v),
                                    Align(alignment: Alignment.center,
                                      child: Container(
                                          width: 270.h,
                                          margin: EdgeInsets.only(
                                              left: 25.h,
                                              // right: 15.h,
                                              bottom: 10,
                                              top: 20),
                                          child: Text(
                                              "Connect your money to your friends & brands.                           ",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .titleLargeRoboto)),
                                    ),
                                    SizedBox(height: 80.v),
                                    Center(
                                      child: ElevatedButton(
                                        // decoration: BoxDecoration(
                                        //   color: Colors.purple,
                                        // // ),
                                        // key:
                                        //     "lbl_get_started".tr.toUpperCase(),

                                        // buttonTextStyle:
                                        //     CustomTextStyles.titleSmallRoboto_1,
                                        onPressed: () {
                                          navitoregis();
                                        },
                                        // alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 71,
                                              top: 15,
                                              bottom: 15,
                                              right: 71),
                                          child: Text(
                                            "GET STARTED",
                                            style: TextStyle(fontSize: 21),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.purple,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            )),
                                      ),
                                    ),
                                    SizedBox(height: 70.v)
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
