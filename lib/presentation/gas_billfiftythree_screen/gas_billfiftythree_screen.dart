
import 'controller/gas_billfiftythree_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class GasBillfiftythreeScreen extends GetWidget<GasBillfiftythreeController> {
  const GasBillfiftythreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 27),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 16),
                  _buildNowUsePayment(),
                  SizedBox(height: 19),
                  CustomElevatedButton(
                      width: 189,
                      text: "lbl_pay".tr.toUpperCase(),
                      onPressed: () {
                        onTapPay();
                      }),
                  SizedBox(height: 5)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_bharat_gas".tr, margin: EdgeInsets.only(left: 14)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Container(
            height: 173,
            width: 334,
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle1064173x334,
                  height: 173,
                  width: 334,
                  radius: BorderRadius.circular(8),
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: Container(
                          height: 173,
                          width: 334,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage7,
                                height: 173,
                                width: 334,
                                radius: BorderRadius.circular(8),
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage9,
                                height: 173,
                                width: 334,
                                radius: BorderRadius.circular(8),
                                alignment: Alignment.center)
                          ]))))
            ])));
  }

  /// Section Widget
  Widget _buildNowUsePayment() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              width: 290,
              margin: EdgeInsets.only(left: 7, right: 16,bottom: 5),
              child: Text("msg_now_use_payment".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallDMSansWhiteA700)),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text("lbl_order_now".tr,
                      style: CustomTextStyles.titleMediumDMSansWhiteA700))),
          SizedBox(height: 37),
          Padding(
              padding: EdgeInsets.only(left: 7),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_price".tr,
                        style: CustomTextStyles.bodyLargeDMSansWhiteA700),
                    Text("lbl_580_95".tr,
                        style: CustomTextStyles.bodyLargeDMSansWhiteA700)
                  ])),
          SizedBox(height: 37),
          Padding(
              padding: EdgeInsets.only(left: 7, right: 16),
              child: _buildTimeZone(
                  timeZoneText: "lbl_cgst".tr, priceText: "lbl_14_52".tr)),
          SizedBox(height: 36),
          Padding(
              padding: EdgeInsets.only(left: 7, right: 16),
              child: _buildTimeZone(
                  timeZoneText: "lbl_sgst".tr, priceText: "lbl_14_52".tr)),
          SizedBox(height: 36),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 7, right: 26),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_final_price".tr,
                            style: CustomTextStyles.bodyLargeDMSansWhiteA700),
                        Text("lbl_610".tr,
                            style: CustomTextStyles.bodyLargeDMSansWhiteA700)
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildTimeZone({
    required String timeZoneText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(timeZoneText,
          style: CustomTextStyles.bodyLargeDMSansWhiteA700
              .copyWith(color: appTheme.whiteA700)),
      Text(priceText,
          style: CustomTextStyles.bodyLargeDMSansWhiteA700
              .copyWith(color: appTheme.whiteA700))
    ]);
  }

  /// Navigates to the gasRegisterfiftytwoScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.gasRegisterfiftytwoScreen,
    );
  }

  /// Navigates to the amount154Screen when the action is triggered.
  onTapPay() {
    Get.toNamed(
      AppRoutes.twentythreeScreen,
    );
  }
}
