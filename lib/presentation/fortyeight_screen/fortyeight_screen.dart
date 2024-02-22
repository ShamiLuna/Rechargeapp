import 'controller/fortyeight_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class FortyeightScreen extends GetWidget<FortyeightController> {
  const FortyeightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 34),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                    height: 15,
                                    width: 13,
                                    alignment: Alignment.centerRight),
                                SizedBox(height: 65),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 28, vertical: 37),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("msg_transaction_loading".tr,
                                              style: CustomTextStyles
                                                  .titleLargeTitilliumWeb),
                                          SizedBox(height: 144),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTwo();
                                              },
                                              child: SizedBox(
                                                  height: 151,
                                                  width: 269,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup2,
                                                            height: 46,
                                                            width: 254,
                                                            alignment: Alignment
                                                                .topLeft,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 1)),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 55,
                                                                        right: 124,
                                                                        bottom: 17),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        16,
                                                                    vertical:
                                                                        13),
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
                                                                              ,
                                                                          width: 58
                                                                          ,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4))),
                                                                      SizedBox(
                                                                          height:
                                                                              14),
                                                                      Container(
                                                                          height: 8
                                                                              ,
                                                                          width: 58
                                                                              ,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4))),
                                                                      SizedBox(
                                                                          height:
                                                                              14),
                                                                      Container(
                                                                          height: 8
                                                                              ,
                                                                          width: 58
                                                                              ,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4))),
                                                                      SizedBox(
                                                                          height:
                                                                              14),
                                                                      Container(
                                                                          height: 8
                                                                              ,
                                                                          width: 58
                                                                              ,
                                                                          decoration: BoxDecoration(
                                                                              color: appTheme.deepPurple100,
                                                                              borderRadius: BorderRadius.circular(4)))
                                                                    ]))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                        15,
                                                                        24,
                                                                        5,
                                                                        24),
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
                                                                              14),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 9
                                                                                  ),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(height: 10, width: 24, margin: EdgeInsets.only(bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFrame4, height: 16, width: 32, margin: EdgeInsets.only(left: 9)),
                                                                                Container(height: 10, width: 24, margin: EdgeInsets.only(left: 7, bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                Container(height: 10, width: 24, margin: EdgeInsets.only(left: 12, bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFrame4, height: 16, width: 32, margin: EdgeInsets.only(left: 10)),
                                                                                Container(height: 10, width: 24, margin: EdgeInsets.only(left: 6, bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5)))
                                                                              ])),
                                                                      SizedBox(
                                                                          height:
                                                                              11),
                                                                      Padding(
                                                                          padding: EdgeInsets.symmetric(
                                                                              horizontal: 4
                                                                                  ),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(height: 10, width: 28, margin: EdgeInsets.only(bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                Container(height: 10, width: 28, margin: EdgeInsets.only(left: 6, bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                Container(height: 10, width: 49, margin: EdgeInsets.only(left: 13, bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                Container(height: 10, width: 28, margin: EdgeInsets.only(left: 16, bottom: 6), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(5))),
                                                                                CustomImageView(imagePath: ImageConstant.imgFrame4, height: 16, width: 32, margin: EdgeInsets.only(left: 5))
                                                                              ]))
                                                                    ])))
                                                      ]))),
                                          SizedBox(height: 144)
                                        ])),
                                SizedBox(height: 65)
                              ]))))
                ]))));
  }

  /// Navigates to the fortynineScreen when the action is triggered.
  onTapTwo() {
    Get.offNamed(
      AppRoutes.fortynineScreen,
    );

  }

}
