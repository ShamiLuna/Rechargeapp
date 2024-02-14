import 'controller/frame_33752_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class Frame33752Screen extends GetWidget<Frame33752Controller> {
  const Frame33752Screen({Key? key}) : super(key: key);

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
                                  horizontal: 35.h, vertical: 34.v),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                    height: 15.v,
                                    width: 13.h,
                                    alignment: Alignment.centerRight),
                                SizedBox(height: 65.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 28.h, vertical: 37.v),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("msg_transaction_loading".tr,
                                              style: CustomTextStyles
                                                  .titleLargeTitilliumWeb),
                                          SizedBox(height: 144.v),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTwo();
                                              },
                                              child: SizedBox(
                                                  height: 151.v,
                                                  width: 269.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup2,
                                                            height: 46.v,
                                                            width: 254.h,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 1.h)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 55
                                                                            .h,
                                                                        right: 124
                                                                            .h,
                                                                        bottom: 17
                                                                            .v),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        16.h,
                                                                    vertical:
                                                                        13.v),
                                                                decoration: AppDecoration
                                                                    .fillGray10002
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder17),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Container(
                                                                          height: 8
                                                                              .v,
                                                                          width: 58
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4.h))),
                                                                      SizedBox(
                                                                          height:
                                                                              14.v),
                                                                      Container(
                                                                          height: 8
                                                                              .v,
                                                                          width: 58
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4.h))),
                                                                      SizedBox(
                                                                          height:
                                                                              14.v),
                                                                      Container(
                                                                          height: 8
                                                                              .v,
                                                                          width: 58
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4.h))),
                                                                      SizedBox(
                                                                          height:
                                                                              14.v),
                                                                      Container(
                                                                          height: 8
                                                                              .v,
                                                                          width: 58
                                                                              .h,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4.h)))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 15
                                                                            .h,
                                                                        vertical: 24
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder17,
                                                                    image: DecorationImage(
                                                                        image: AssetImage(ImageConstant
                                                                            .imgGroup868),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      SizedBox(
                                                                          height:
                                                                              14.v),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 9
                                                                                  .h),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(height: 10.v, width: 24.h, margin: EdgeInsets.only(bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFrame4, height: 16.v, width: 32.h, margin: EdgeInsets.only(left: 9.h)),
                                                                                Container(height: 10.v, width: 24.h, margin: EdgeInsets.only(left: 7.h, bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                Container(height: 10.v, width: 24.h, margin: EdgeInsets.only(left: 12.h, bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFrame4, height: 16.v, width: 32.h, margin: EdgeInsets.only(left: 10.h)),
                                                                                Container(height: 10.v, width: 24.h, margin: EdgeInsets.only(left: 6.h, bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h)))
                                                                              ])),
                                                                      SizedBox(
                                                                          height:
                                                                              11.v),
                                                                      Padding(
                                                                          padding: EdgeInsets.symmetric(
                                                                              horizontal: 4
                                                                                  .h),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(height: 10.v, width: 28.h, margin: EdgeInsets.only(bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                Container(height: 10.v, width: 28.h, margin: EdgeInsets.only(left: 6.h, bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                Container(height: 10.v, width: 49.h, margin: EdgeInsets.only(left: 13.h, bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                Container(height: 10.v, width: 28.h, margin: EdgeInsets.only(left: 16.h, bottom: 6.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5.h))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFrame4, height: 16.v, width: 32.h, margin: EdgeInsets.only(left: 5.h))
                                                                              ]))
                                                                    ])))
                                                      ]))),
                                          SizedBox(height: 144.v)
                                        ])),
                                SizedBox(height: 65.v)
                              ]))))
                ]))));
  }

  /// Navigates to the frame33753Screen when the action is triggered.
  onTapTwo() {
    Get.offNamed(
      AppRoutes.oneScreen,
    );
  }
}
