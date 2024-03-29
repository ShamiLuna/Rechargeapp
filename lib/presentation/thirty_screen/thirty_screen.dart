import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/custom_outlined_button.dart';
import 'controller/thirty_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ThirtyScreen extends GetWidget<ThirtyController> {
  const ThirtyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: SizedBox(
                  height: 1300,
                  width: 480,
                  child: Container(
                    height: 1000,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: [
                        SizedBox(height: 60),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1064,
                            height: 173,
                            width: 334,
                            radius: BorderRadius.circular(6)),
                        SizedBox(height: 17),
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 21),
                            child: CustomSearchView(
                                controller: controller.searchController,
                                hintText: "lbl_search".tr)),
                        SizedBox(height: 12),
                        // CustomImageView(
                        //     imagePath: ImageConstant.imgFrame33653,
                        //     height: 159,
                        //     width: 337,
                        //     radius: BorderRadius.circular(8)),
                        // SizedBox(height: 17),
                        SizedBox(
                            width: 320,
                            child: Text("msg_never_miss_paying".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallBluegray40001)),
                        SizedBox(height: 14),
                        Divider(color: appTheme.blueGray4003a),
                        SizedBox(height: 17),
                        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          SizedBox(height: 4,
                            width: 30,

                          ),
                          SizedBox(
                              width: 230,
                              child: Text("msg_allow_the_app_to".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallBluegray40001)),

                          CustomOutlinedButton(
                              height: 29,
                              width: 100,
                              text: "lbl_allow".tr,
                              margin: EdgeInsets.only(left: 4, top: 6, bottom: 8),
                              buttonStyle: CustomButtonStyles.outlinePrimary,
                              buttonTextStyle: CustomTextStyles.titleSmallPrimary)
                        ]),
                        _buildFrame(),
                        SizedBox(
                          height: 10,
                        ),
                      ]))),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_dth".tr, margin: EdgeInsets.only(left: 24)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        width: 337,
        margin: EdgeInsets.symmetric(horizontal: 19),
        padding: EdgeInsets.symmetric(horizontal: 36),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26),
                Text("lbl_dth".tr, style: CustomTextStyles.titleMediumGray60004),
                SizedBox(height: 29),
                GestureDetector(
                    onTap: (){
                      Get.offNamed(AppRoutes.thirtyoneScreen);
                    },
                    child: _buildDianiRow1(titleText: "msg_airtel_digital_tv".tr)),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: (){
                      Get.offNamed(AppRoutes.thirtyoneScreen);
                    },
                    child: _buildDianiRow2(channelName: "msg_colors_rishtey_tv".tr)),
                SizedBox(height: 30),
                GestureDetector(
                    onTap: (){
                      Get.offNamed(AppRoutes.thirtyoneScreen);
                    },
                    child: _buildDianiRow1(titleText: "msg_airtel_digital_tv".tr)),
                SizedBox(height: 76),
                _buildDianiRow2(channelName: "msg_colors_rishtey_tv".tr),
                SizedBox(height: 141),
                _buildDianiRow1(titleText: "msg_airtel_digital_tv".tr),
                SizedBox(height: 206),
                _buildDianiRow2(channelName: "msg_colors_rishtey_tv".tr)
              ]),
        ));
  }

  /// Common widget
  Widget _buildDianiRow1({required String titleText}) {
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
  Widget _buildDianiRow2({required String channelName}) {
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

  /// Navigates to the thirtyoneScreen when the action is triggered.
  onTapDianiRow1() {
    Get.toNamed(
      AppRoutes.thirtyoneScreen,
    );
  }
}
