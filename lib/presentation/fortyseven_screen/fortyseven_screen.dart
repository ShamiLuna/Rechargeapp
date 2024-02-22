import 'controller/fortyseven_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FortysevenScreen extends GetWidget<FortysevenController> {
  const FortysevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                height: 893,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(children: [
                  Text("lbl_enter_your_pin".tr,
                      style: CustomTextStyles.titleLargeInter),
                  SizedBox(height: 63),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgClosePrimary,
                        height: 44,
                        width: 44),
                    CustomImageView(
                        imagePath: ImageConstant.imgClosePrimary,
                        height: 44,
                        width: 44,
                        margin: EdgeInsets.only(left: 4)),
                    CustomImageView(
                        imagePath: ImageConstant.imgClosePrimary,
                        height: 44,
                        width: 44,
                        margin: EdgeInsets.only(left: 4)),
                    CustomImageView(
                        imagePath: ImageConstant.imgClosePrimary,
                        height: 44,
                        width: 44,
                        margin: EdgeInsets.only(left: 4))
                  ]),
                  // Spacer(),
                  SizedBox(
                    height: 50,
                  ),
                  _buildNumbersRow(
                      numberOne: "lbl_1".tr,
                      numberTwo: "lbl_22".tr,
                      numberThree: "lbl_32".tr),
                  SizedBox(height: 59),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text("lbl_4".tr, style: theme.textTheme.headlineSmall),
                    Padding(
                        padding: EdgeInsets.only(left: 86),
                        child: Text("lbl_5".tr,
                            style: theme.textTheme.headlineSmall)),
                    Padding(
                        padding: EdgeInsets.only(left: 86),
                        child: Text("lbl_6".tr,
                            style: theme.textTheme.headlineSmall))
                  ]),
                  SizedBox(height: 58),
                  _buildNumbersRow(
                      numberOne: "lbl_7".tr,
                      numberTwo: "lbl_8".tr,
                      numberThree: "lbl_9".tr),
                  SizedBox(height: 59),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right:192),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_0".tr,
                                    style: theme.textTheme.headlineSmall),
                                // CustomImageView(
                                //     imagePath:
                                //         ImageConstant.imgCloseWhiteA70017x24,
                                //     height: 17,
                                //     width: 24,
                                //     margin: EdgeInsets.only(
                                //         left: 81, top: 4, bottom: 6))
                              ]))),
                  SizedBox(height: 70),
                  CustomElevatedButton(
                      width: 215,
                      text: "lbl_confirm".tr.toUpperCase(),
                      margin: EdgeInsets.only(left: 5),
                      onPressed: () {
                        na48();
                      }),
                  SizedBox(height: 27)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 69,
        leadingWidth: double.maxFinite,
        leading: Container(
            height: 15,
            width: 13,
            margin: EdgeInsets.fromLTRB(25, 20, 337, 20),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector22,
                  height: 15,
                  width: 13,
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgVector23,
                  height: 15,
                  width: 13,
                  alignment: Alignment.center)
            ])));
  }

  /// Common widget
  Widget _buildNumbersRow({
    required String numberOne,
    required String numberTwo,
    required String numberThree,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(numberOne,
          style: theme.textTheme.headlineSmall!
              .copyWith(color: appTheme.whiteA700)),
      Padding(
          padding: EdgeInsets.only(left: 87),
          child: Text(numberTwo,
              style: theme.textTheme.headlineSmall!
                  .copyWith(color: appTheme.whiteA700))),
      Padding(
          padding: EdgeInsets.only(left: 86),
          child: Text(numberThree,
              style: theme.textTheme.headlineSmall!
                  .copyWith(color: appTheme.whiteA700)))
    ]);
  }

  /// Navigates to the fortyeightScreen when the action is triggered.
  na48() {
    Get.offNamed(
      AppRoutes.fortyeightScreen,
    );
  }
}
