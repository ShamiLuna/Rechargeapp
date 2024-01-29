import 'controller/twelve_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TwelveScreen extends GetWidget<TwelveController> {
  const TwelveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(children: [
                          SizedBox(height: 59.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173.v,
                              width: 334.h,
                              radius: BorderRadius.circular(6.h)),
                          SizedBox(height: 46.v),
                          Container(
                              width: 325.h,
                              margin: EdgeInsets.symmetric(horizontal: 25.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19.h, vertical: 13.v),
                              decoration: AppDecoration.outlineWhiteA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Opacity(
                                        opacity: 0.5,
                                        child: Text("lbl_enter_amount".tr,
                                            style: CustomTextStyles
                                                .bodySmallWhiteA700)),
                                    SizedBox(height: 6.v),
                                    Row(children: [
                                      Text("lbl_150".tr,
                                          style: CustomTextStyles
                                              .titleLargeSemiBold),
                                      Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: SizedBox(
                                              height: 29.v,
                                              child: VerticalDivider(
                                                  width: 1.h,
                                                  thickness: 1.v,
                                                  color:
                                                      theme.colorScheme.primary,
                                                  indent: 2.h,
                                                  endIndent: 2.h)))
                                    ]),
                                    SizedBox(height: 2.v)
                                  ])),
                          SizedBox(height: 66.v),
                          Padding(
                              padding: EdgeInsets.only(left: 55.h, right: 50.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_1".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_22".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_32".tr,
                                        style: theme.textTheme.titleLarge)
                                  ])),
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 51.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_4".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_5".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_6".tr,
                                        style: theme.textTheme.titleLarge)
                                  ])),
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.only(left: 53.h, right: 50.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_7".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_8".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_9".tr,
                                        style: theme.textTheme.titleLarge)
                                  ])),
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.only(left: 55.h, right: 44.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 6.v),
                                        child: Text("lbl4".tr,
                                            style: theme.textTheme.titleLarge)),
                                    Spacer(flex: 52),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: Text("lbl_0".tr,
                                            style: theme.textTheme.titleLarge)),
                                    Spacer(flex: 47),
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: Text("lbl5".tr,
                                            style: theme.textTheme.titleLarge))
                                  ]))
                        ])))),
            bottomNavigationBar: _buildBuyButton()));
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
            text: "msg_select_recharge".tr,
            margin: EdgeInsets.only(left: 10.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBuyButton() {
    return CustomElevatedButton(
        width: 189.h,
        text: "lbl_buy".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 113.h, right: 113.h, bottom: 47.v),
        onPressed: () {
          onTapBuyButton();
        });
  }

  /// Navigates to the elevenTabContainerScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.elevenTabContainerScreen,
    );
  }

  /// Navigates to the thirteenScreen when the action is triggered.
  onTapBuyButton() {
    Get.toNamed(
      AppRoutes.thirteenScreen,
    );
  }
}
