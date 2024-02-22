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
                width: 480,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(children: [
                          SizedBox(height: 6),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173,
                              width: 334,
                              radius: BorderRadius.circular(6)),
                          SizedBox(height: 17),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19),
                              child: CustomSearchView(
                                  controller: controller.searchController,
                                  hintText: "lbl_search".tr)),
                          SizedBox(height: 12),
                          _buildAllowTheAppTo(),
                          SizedBox(height: 17),
                          _buildCableHome()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppbarLeadingImage(
              imagePath: ImageConstant.imgBack,
              margin: EdgeInsets.only(),
              onTap: () {
                onTapBack();
              }),
        ),
        title: AppbarTitle(
            text: "lbl_cable".tr, margin: EdgeInsets.only(left: 18)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAllowTheAppTo() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 19),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 21),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 183,
                  child: Text("msg_never_miss_paying2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallGray600)),
              SizedBox(height: 14),
              Divider(color: appTheme.whiteA700.withOpacity(0.24)),
              SizedBox(height: 22),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgAllowTheAppTo,
                        height: 35,
                        width: 203),
                    Container(
                        height: 18,
                        width: 60,
                        margin: EdgeInsets.only(top: 2, bottom: 14),
                        padding: EdgeInsets.symmetric(
                            horizontal: 9, vertical: 3),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSettingsPrimary,
                            height: 10,
                            width: 40,
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
            width: 337,
            margin: EdgeInsets.symmetric(horizontal: 19),
            padding: EdgeInsets.symmetric(horizontal: 36),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 26),
                  Text("lbl_dth".tr,
                      style: CustomTextStyles.titleMediumGray60004),
                  SizedBox(height: 29),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse771,
                        height: 35,
                        width: 35,
                        radius: BorderRadius.circular(17)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18, top: 6, bottom: 10),
                        child: Text("lbl_act_tv".tr,
                            style: CustomTextStyles.labelLargeGray60004))
                  ]),
                  SizedBox(height: 30),
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse772,
                        height: 35,
                        width: 35,
                        radius: BorderRadius.circular(17)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18, top: 8, bottom: 8),
                        child: Text("lbl_asianet_digital".tr,
                            style: CustomTextStyles.labelLargeGray60004))
                  ]),
                  SizedBox(height: 30),
                  _buildDiani1(titleText: "msg_airtel_digital_tv".tr),
                  SizedBox(height: 76),
                  _buildDiani2(channelName: "msg_colors_rishtey_tv".tr),
                  SizedBox(height: 141),
                  _buildDiani1(titleText: "msg_airtel_digital_tv".tr),
                  SizedBox(height: 206),
                  _buildDiani2(channelName: "msg_colors_rishtey_tv".tr)
                ])));
  }

  /// Common widget
  Widget _buildDiani1({required String titleText}) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse771,
          height: 35,
          width: 35,
          radius: BorderRadius.circular(17)),
      Padding(
          padding: EdgeInsets.only(left: 18, top: 9),
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
          height: 35,
          width: 35,
          radius: BorderRadius.circular(17)),
      Padding(
          padding: EdgeInsets.only(left: 18, top: 9),
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
