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
                height: 1400,
                width: 393,
                child: SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(children: [
                        SizedBox(height: 60),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1064,
                            height: 173,
                            width: 334,
                            radius: BorderRadius.circular(6)),
                        SizedBox(height: 17),
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 19),
                            child: CustomSearchView(
                                controller: controller.searchController,
                                hintText: "lbl_search".tr)),
                        SizedBox(height: 12),
                        _buildFrame(),
                        _buildFrame1()
                      ])),
                ))));
  }
  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 77,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_mobile_recharge".tr,
            margin: EdgeInsets.only(left: 15)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        height: 1,
        width: 400,
        margin: EdgeInsets.symmetric(horizontal: 19),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4),
              SizedBox(
                  width: 183,
                  child: Text("msg_never_miss_paying".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallBluegray40001)),
              SizedBox(height: 14),
              Divider(color: appTheme.blueGray4003a),
              SizedBox(height: 17),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    width: 205,
                    child: Text("msg_allow_the_app_to".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleSmallBluegray40001)),
                CustomOutlinedButton(
                    height: 29,
                    width: 61,
                    text: "lbl_allow".tr,
                    margin: EdgeInsets.only(left: 4, top: 6, bottom: 8),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.titleSmallPrimary)
              ])
            ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
        width: 337,
        margin: EdgeInsets.symmetric(horizontal: 19),
        padding: EdgeInsets.symmetric(horizontal: 36),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: GestureDetector(
          onTap: () {
            onTapDiani();
          },
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28),
                Text("lbl_all_contact".tr,
                    style: CustomTextStyles.titleMediumBluegray40001),
                SizedBox(height: 27),
                GestureDetector(
                    onTap: () {
                      onTapDiani();
                    },
                    child: Row(children: [
                      Container(
                          width: 35,
                          margin: EdgeInsets.only(bottom: 1),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 1),
                          decoration: AppDecoration.fillIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Text("lbl_d".tr,
                              style: CustomTextStyles.titleLargeIndigoA10001)),
                      Padding(
                          padding: EdgeInsets.only(left: 18, top: 3),
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
                SizedBox(height: 28),
                _buildNuniEksitin(
                    titleText: "lbl_b".tr,
                    nameText: "lbl_bahrun_st".tr,
                    mobileNumber: "lbl_62898023450".tr),
                SizedBox(height: 28),
                Row(children: [
                  Container(
                      width: 35,
                      margin: EdgeInsets.only(bottom: 2),
                      padding:
                          EdgeInsets.symmetric(horizontal: 11, vertical: 2),
                      decoration: AppDecoration.fillTealA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Text("lbl_r".tr,
                          style: CustomTextStyles.titleLargeTealA100)),
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 4),
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
                SizedBox(height: 28),
                Row(children: [
                  Container(
                      width: 35,
                      margin: EdgeInsets.only(bottom: 2),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: AppDecoration.fillDeepOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Text("lbl_e".tr,
                          style: CustomTextStyles.titleLargeDeeporange200)),
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 4),
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
                SizedBox(height: 28),
                Row(children: [
                  Container(
                      width: 35,
                      margin: EdgeInsets.only(bottom: 2),
                      padding:
                          EdgeInsets.symmetric(horizontal: 11, vertical: 2),
                      decoration: AppDecoration.fillIndigoA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Text("lbl_s".tr,
                          style: CustomTextStyles.titleLargeIndigoA10001)),
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 4),
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
                SizedBox(height: 28),
                _buildNuniEksitin(
                    titleText: "lbl_n".tr,
                    nameText: "lbl_nuni_eksitin".tr,
                    mobileNumber: "lbl_62898023450".tr)
              ]),
        ));
  }

  /// Common widget
  Widget _buildNuniEksitin({
    required String titleText,
    required String nameText,
    required String mobileNumber,
  }) {
    return Row(children: [
      Container(
          width: 35,
          margin: EdgeInsets.only(bottom: 2),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: AppDecoration.fillIndigoA
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
          child: Text(titleText,
              style: CustomTextStyles.titleLargeIndigoA10001
                  .copyWith(color: appTheme.indigoA10001))),
      Padding(
          padding: EdgeInsets.only(left: 18, top: 4),
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
