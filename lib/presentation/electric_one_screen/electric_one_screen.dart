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
                width: 480,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 14),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173,
                              width: 334,
                              radius: BorderRadius.circular(6)),
                          SizedBox(height: 17),
                          CustomSearchView(
                              controller: controller.searchController,
                              hintText: "lbl_search".tr),
                          SizedBox(height: 13),
                          _buildFrame()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45,
        leadingWidth: 57,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_electricity".tr, margin: EdgeInsets.only(left: 19)));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          Container(
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
                        child: Text("msg_never_miss_paying2".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleSmall14)),
                    SizedBox(height: 15),
                    Divider(color: appTheme.whiteA700.withOpacity(0.24)),
                    SizedBox(height: 17),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 220,
                              child: Text("msg_allow_the_app_to".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmall14)),
                          CustomOutlinedButton(
                              height: 29,
                              width: 100,
                              text: "lbl_allow".tr,
                              margin: EdgeInsets.only(
                                  left: 4, top: 6, bottom: 8,right: 6),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle:
                                  CustomTextStyles.titleSmallPrimary)
                        ])
                  ])),
          SizedBox(height: 14),
          Container(
              width: 337,
              padding: EdgeInsets.symmetric(horizontal: 36),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 27),
                    Text("msg_billers_in_tamilnadu2".tr,
                        style: CustomTextStyles.titleMediumWhiteA700Medium_1),
                    SizedBox(height: 28),
                    Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: _buildDiani(
                            tamilnaduElectricityBoard:
                                "msg_tamilnadu_electricity".tr,
                            onTapDiani: () {
                              onTapDiani();
                            })),
                    SizedBox(height: 30),
                    Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: _buildDiani(
                            tamilnaduElectricityBoard:
                                "msg_tamilnadu_electricity".tr)),
                    SizedBox(height: 30),
                    Row(children: [
                      Container(
                          width: 35,
                          margin: EdgeInsets.only(bottom: 2),
                          padding: EdgeInsets.symmetric(
                              horizontal: 11, vertical: 2),
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
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ]),
                    SizedBox(height: 28),
                    Row(children: [
                      Container(
                          width: 35,
                          margin: EdgeInsets.only(bottom: 2),
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 2),
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
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ]),
                    SizedBox(height: 28),
                    Row(children: [
                      Container(
                          width: 35,
                          margin: EdgeInsets.only(bottom: 2),
                          padding: EdgeInsets.symmetric(
                              horizontal: 11, vertical: 2),
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
                                    style: theme.textTheme.labelLarge),
                                Opacity(
                                    opacity: 0.5,
                                    child: Text("lbl_62898023450".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA70010))
                              ]))
                    ]),
                    SizedBox(height: 28),
                    Row(children: [
                      Container(
                          width: 35,
                          margin: EdgeInsets.only(bottom: 2),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2),
                          decoration: AppDecoration.fillIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder17),
                          child: Text("lbl_n".tr,
                              style: CustomTextStyles.titleLargeIndigoA10001)),
                      Padding(
                          padding: EdgeInsets.only(left: 18, top: 4),
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
              height: 35,
              width: 35,
              radius: BorderRadius.circular(19)),
          Padding(
              padding: EdgeInsets.only(left: 15, top: 9, bottom: 7),
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
