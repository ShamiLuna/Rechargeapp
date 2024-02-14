import 'controller/ten_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_outlined_button.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class TenScreen extends GetWidget<TenController> {
  const TenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(children: [
                          SizedBox(height: 60.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173.v,
                              width: 334.h,
                              radius: BorderRadius.circular(6.h)),
                          SizedBox(height: 17.v),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h, right: 19.h),
                              child: CustomSearchView(
                                  controller: controller.searchController,
                                  hintText: "lbl_search".tr)),
                          SizedBox(height: 12.v),
                          _buildFrame(),
                          _buildFrame1()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 77.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 45.h, top: 22.v, bottom: 22.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_mobile_recharge".tr,
            margin: EdgeInsets.only(left: 15.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              SizedBox(
                  width: 183.h,
                  child: Text("msg_never_miss_paying".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray40001)),
              SizedBox(height: 14.v),
              Divider(color: appTheme.blueGray4003a),
              SizedBox(height: 17.v),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    width: 205.h,
                    child: Text("msg_allow_the_app_to".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallBluegray40001)),
                CustomOutlinedButton(
                    height: 29.v,
                    width: 61.h,
                    text: "lbl_allow".tr,
                    margin: EdgeInsets.only(left: 4.h, top: 6.v, bottom: 8.v),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary)
              ])
            ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
        width: 337.h,
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        padding: EdgeInsets.symmetric(horizontal: 36.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.v),
              Text("lbl_all_contact".tr,
                  style: CustomTextStyles.titleMediumBluegray40001),
              SizedBox(height: 27.v),
              GestureDetector(
                  onTap: () {
                    onTapDiani();
                  },
                  child: Row(children: [
                    Container(
                        width: 35.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 1.v),
                        decoration: AppDecoration.fillIndigoA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder17),
                        child: Text("lbl_d".tr,
                            style: CustomTextStyles.titleLargeIndigoA10001)),
                    Padding(
                        padding: EdgeInsets.only(left: 18.h, top: 3.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_diani_otelanis_teori".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray40001),
                              Opacity(
                                  opacity: 0.5,
                                  child: Text("lbl_62898023450".tr,
                                      style: CustomTextStyles
                                          .bodySmallBluegray40001))
                            ]))
                  ])),
              SizedBox(height: 28.v),
              _buildNuniEksitin(
                  titleText: "lbl_b".tr,
                  nameText: "lbl_bahrun_st".tr,
                  mobileNumber: "lbl_62898023450".tr),
              SizedBox(height: 28.v),
              Row(children: [
                Container(
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 2.v),
                    decoration: AppDecoration.fillTealA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Text("lbl_r".tr,
                        style: CustomTextStyles.titleLargeTealA100)),
                Padding(
                    padding: EdgeInsets.only(left: 18.h, top: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_ririn_panjaitan".tr,
                              style: CustomTextStyles.labelLargeBluegray40001),
                          Opacity(
                              opacity: 0.5,
                              child: Text("lbl_62898023450".tr,
                                  style:
                                      CustomTextStyles.bodySmallBluegray40001))
                        ]))
              ]),
              SizedBox(height: 28.v),
              Row(children: [
                Container(
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
                    decoration: AppDecoration.fillDeepOrange.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Text("lbl_e".tr,
                        style: CustomTextStyles.titleLargeDeeporange200)),
                Padding(
                    padding: EdgeInsets.only(left: 18.h, top: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_eki_sulungpati_mpd".tr,
                              style: CustomTextStyles.labelLargeBluegray40001),
                          Opacity(
                              opacity: 0.5,
                              child: Text("lbl_62898023450".tr,
                                  style:
                                      CustomTextStyles.bodySmallBluegray40001))
                        ]))
              ]),
              SizedBox(height: 28.v),
              Row(children: [
                Container(
                    width: 35.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.h, vertical: 2.v),
                    decoration: AppDecoration.fillIndigoA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder17),
                    child: Text("lbl_s".tr,
                        style: CustomTextStyles.titleLargeIndigoA10001)),
                Padding(
                    padding: EdgeInsets.only(left: 18.h, top: 4.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_septiani_destri".tr,
                              style: CustomTextStyles.labelLargeBluegray40001),
                          Opacity(
                              opacity: 0.5,
                              child: Text("lbl_62898023450".tr,
                                  style:
                                      CustomTextStyles.bodySmallBluegray40001))
                        ]))
              ]),
              SizedBox(height: 28.v),
              _buildNuniEksitin(
                  titleText: "lbl_n".tr,
                  nameText: "lbl_nuni_eksitin".tr,
                  mobileNumber: "lbl_62898023450".tr)
            ]));
  }

  /// Common widget
  Widget _buildNuniEksitin({
    required String titleText,
    required String nameText,
    required String mobileNumber,
  }) {
    return Row(children: [
      Container(
          width: 35.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
          decoration: AppDecoration.fillIndigoA
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Text(titleText,
              style: CustomTextStyles.titleLargeIndigoA10001
                  .copyWith(color: appTheme.indigoA10001))),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 4.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(nameText,
                style: CustomTextStyles.labelLargeBluegray40001
                    .copyWith(color: appTheme.blueGray40001)),
            Opacity(
                opacity: 0.5,
                child: Text(mobileNumber,
                    style: CustomTextStyles.bodySmallBluegray40001.copyWith(
                        color: appTheme.blueGray40001.withOpacity(0.53))))
          ]))
    ]);
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.eightScreen,
    );
  }

  /// Navigates to the elevenTabContainerScreen when the action is triggered.
  onTapDiani() {
    Get.toNamed(
      AppRoutes.elevenTabContainerScreen,
    );
  }
}
