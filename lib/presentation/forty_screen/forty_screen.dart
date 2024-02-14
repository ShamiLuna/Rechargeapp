import 'controller/forty_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FortyScreen extends GetWidget<FortyController> {
  const FortyScreen({Key? key}) : super(key: key);

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
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Column(children: [
                          SizedBox(height: 6.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173.v,
                              width: 334.h,
                              radius: BorderRadius.circular(6.h)),
                          SizedBox(height: 17.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: CustomSearchView(
                                  controller: controller.searchController,
                                  hintText: "lbl_search".tr)),
                          SizedBox(height: 12.v),
                          _buildAllowTheAppTo(),
                          SizedBox(height: 17.v),
                          _buildCableHome()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 22.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_cable".tr, margin: EdgeInsets.only(left: 18.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAllowTheAppTo() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 21.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 183.h,
                  child: Text("msg_never_miss_paying2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallGray600)),
              SizedBox(height: 14.v),
              Divider(color: appTheme.whiteA700.withOpacity(0.24)),
              SizedBox(height: 22.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAllowTheAppTo,
                        height: 35.v,
                        width: 203.h),
                    Container(
                        height: 18.v,
                        width: 60.h,
                        margin: EdgeInsets.only(top: 2.v, bottom: 14.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 9.h, vertical: 3.v),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSettingsPrimary,
                            height: 10.v,
                            width: 40.h,
                            alignment: Alignment.center))
                  ])
            ]));
  }

  /// Section Widget
  Widget _buildCableHome() {
    return GestureDetector(
        onTap: () {
          navi42();
        },
        child: Container(
            width: 337.h,
            margin: EdgeInsets.symmetric(horizontal: 19.h),
            padding: EdgeInsets.symmetric(horizontal: 36.h),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 26.v),
                  Text("lbl_dth".tr,
                      style: CustomTextStyles.titleMediumGray60004),
                  SizedBox(height: 29.v),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse771,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        radius: BorderRadius.circular(17.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18.h, top: 6.v, bottom: 10.v),
                        child: Text("lbl_act_tv".tr,
                            style: CustomTextStyles.labelLargeGray60004))
                  ]),
                  SizedBox(height: 30.v),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse772,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        radius: BorderRadius.circular(17.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18.h, top: 8.v, bottom: 8.v),
                        child: Text("lbl_asianet_digital".tr,
                            style: CustomTextStyles.labelLargeGray60004))
                  ]),
                  SizedBox(height: 30.v),
                  _buildDiani1(titleText: "msg_airtel_digital_tv".tr),
                  SizedBox(height: 76.v),
                  _buildDiani2(channelName: "msg_colors_rishtey_tv".tr),
                  SizedBox(height: 141.v),
                  _buildDiani1(titleText: "msg_airtel_digital_tv".tr),
                  SizedBox(height: 206.v),
                  _buildDiani2(channelName: "msg_colors_rishtey_tv".tr)
                ])));
  }

  /// Common widget
  Widget _buildDiani1({required String titleText}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse771,
          height: 35.adaptSize,
          width: 35.adaptSize,
          radius: BorderRadius.circular(17.h)),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 9.v),
          child: Text(titleText,
              style: CustomTextStyles.labelLargeBlack900
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Common widget
  Widget _buildDiani2({required String channelName}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse772,
          height: 35.adaptSize,
          width: 35.adaptSize,
          radius: BorderRadius.circular(17.h)),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 9.v),
          child: Text(channelName,
              style: CustomTextStyles.labelLargeBlack900
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.eightScreen,
    );
  }

  /// Navigates to the fortyoneScreen when the action is triggered.
  navi42() {
    Get.offNamed(
      AppRoutes.fortyoneScreen,
    );
  }
}
