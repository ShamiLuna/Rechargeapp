import 'controller/electric_one_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_outlined_button.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ElectricOneScreen extends GetWidget<ElectricOneController> {
  const ElectricOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 14.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173.v,
                              width: 334.h,
                              radius: BorderRadius.circular(6.h)),
                          SizedBox(height: 17.v),
                          CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_search".tr),
                          SizedBox(height: 13.v),
                          _buildFrame()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 25.h, top: 22.v, bottom: 21.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_electricity".tr, margin: EdgeInsets.only(left: 19.h)));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          Container(
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
                        child: Text("msg_never_miss_paying2".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmall14)),
                    SizedBox(height: 15.v),
                    Divider(color: appTheme.whiteA700.withOpacity(0.24)),
                    SizedBox(height: 17.v),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 205.h,
                              child: Text("msg_allow_the_app_to".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmall14)),
                          CustomOutlinedButton(
                              height: 29.v,
                              width: 61.h,
                              text: "lbl_allow".tr,
                              margin: EdgeInsets.only(
                                  left: 45.h, top: 6.v, bottom: 8.v),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallPrimary)
                        ])
                  ])),
          SizedBox(height: 14.v),
          Container(
              width: 337.h,
              padding: EdgeInsets.symmetric(horizontal: 36.h),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 27.v),
                    Text("msg_billers_in_tamilnadu2".tr,
                        style: CustomTextStyles.titleMediumWhiteA700Medium_1),
                    SizedBox(height: 28.v),
                    Padding(
                        padding: EdgeInsets.only(right: 46.h),
                        child: _buildDiani(
                            tamilnaduElectricityBoard:
                                "msg_tamilnadu_electricity".tr,
                            onTapDiani: () {
                              onTapDiani();
                            })),
                    SizedBox(height: 30.v),
                    Padding(
                        padding: EdgeInsets.only(right: 46.h),
                        child: _buildDiani(
                            tamilnaduElectricityBoard:
                                "msg_tamilnadu_electricity".tr)),
                    SizedBox(height: 30.v),
                    Row(children: [
                      Container(
                          width: 35.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 2.v),
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
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ]),
                    SizedBox(height: 28.v),
                    Row(children: [
                      Container(
                          width: 35.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 2.v),
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
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ]),
                    SizedBox(height: 28.v),
                    Row(children: [
                      Container(
                          width: 35.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 11.h, vertical: 2.v),
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
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ]),
                    SizedBox(height: 28.v),
                    Row(children: [
                      Container(
                          width: 35.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 2.v),
                          decoration: AppDecoration.fillIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Text("lbl_n".tr,
                              style: CustomTextStyles.titleLargeIndigoA10001)),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 4.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_nuni_eksitin".tr,
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ])
                  ]))
        ]));
  }

  /// Common widget
  Widget _buildDiani({
    required String tamilnaduElectricityBoard,
    Function? onTapDiani,
  }) {
    return GestureDetector(
        onTap: () {
          onTapDiani!.call();
        },
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse7735x35,
              height: 35.adaptSize,
              width: 35.adaptSize,
              radius: BorderRadius.circular(17.h)),
          Padding(
              padding: EdgeInsets.only(left: 18.h, top: 9.v, bottom: 7.v),
              child: Text(tamilnaduElectricityBoard,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.eightScreen,
    );
  }

  /// Navigates to the twentytwoScreen when the action is triggered.
  onTapDiani() {
    Get.toNamed(
      AppRoutes.twentytwoScreen,
    );
  }
}
