import 'controller/amountwsixty_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class AmountwsixtyScreen extends GetWidget<AmountwsixtyController> {
  const AmountwsixtyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1064,
                      height: 173.v,
                      width: 334.h,
                      radius: BorderRadius.circular(6.h)),
                  SizedBox(height: 46.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.h),
                      child: CustomFloatingTextField(
                          controller: controller.amountController,
                          labelText: "lbl_enter_amount".tr,
                          labelStyle: CustomTextStyles.titleLargeSemiBold,
                          hintText: "lbl_enter_amount".tr,
                          hintStyle: CustomTextStyles.titleLargeSemiBold,
                          textInputAction: TextInputAction.done,
                          contentPadding:
                              EdgeInsets.fromLTRB(21.h, 37.v, 21.h, 16.v),
                          borderDecoration: FloatingTextFormFieldStyleHelper
                              .outlineWhiteATL14,
                          filled: false)),
                  SizedBox(height: 66.v),
                  Padding(
                      padding: EdgeInsets.only(left: 35.h, right: 30.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_1".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_22".tr,
                                style: theme.textTheme.titleLarge),
                            Text("lbl_32".tr, style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 31.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_4".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_5".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_6".tr, style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(left: 33.h, right: 30.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_7".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_8".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_9".tr, style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(left: 35.h, right: 24.h),
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
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBuy()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 25.h, top: 22.v, bottom: 22.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "msg_select_recharge".tr,
            margin: EdgeInsets.only(left: 10.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBuy() {
    return CustomElevatedButton(
        width: 189.h,
        text: "lbl_buy".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 93.h, right: 93.h, bottom: 27.v),
        onPressed: () {
          onTapBuy();
        });
  }

  /// Navigates to the water359Screen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.water359Screen,
    );
  }

  /// Navigates to the manualVerificationWsixtyoneScreen when the action is triggered.
  onTapBuy() {
    Get.toNamed(
      AppRoutes.manualVerificationWsixtyoneScreen,
    );
  }
}
