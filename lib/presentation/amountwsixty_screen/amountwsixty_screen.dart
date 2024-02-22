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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1064,
                      height: 173,
                      width: 334,
                      radius: BorderRadius.circular(6)),
                  SizedBox(height: 46),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: CustomFloatingTextField(
                          controller: controller.amountController,
                          labelText: "lbl_enter_amount".tr,
                          labelStyle: CustomTextStyles.titleLargeSemiBold,
                          hintText: "lbl_enter_amount".tr,
                          hintStyle: CustomTextStyles.titleLargeSemiBold,
                          textInputAction: TextInputAction.done,
                          contentPadding:
                              EdgeInsets.fromLTRB(21, 37, 21, 16),
                          borderDecoration: FloatingTextFormFieldStyleHelper
                              .outlineWhiteATL14,
                          filled: false)),
                  SizedBox(height: 66),
                  Padding(
                      padding: EdgeInsets.only(left: 35, right: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_1".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_22".tr,
                                style: theme.textTheme.titleLarge),
                            Text("lbl_32".tr, style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 27),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 31),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_4".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_5".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_6".tr, style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 27),
                  Padding(
                      padding: EdgeInsets.only(left: 33, right: 30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_7".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_8".tr, style: theme.textTheme.titleLarge),
                            Text("lbl_9".tr, style: theme.textTheme.titleLarge)
                          ])),
                  SizedBox(height: 27),
                  Padding(
                      padding: EdgeInsets.only(left: 35, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Text("lbl4".tr,
                                    style: theme.textTheme.titleLarge)),
                            Spacer(flex: 52),
                            Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child: Text("lbl_0".tr,
                                    style: theme.textTheme.titleLarge)),
                            Spacer(flex: 47),
                            Padding(
                                padding: EdgeInsets.only(bottom: 6),
                                child: Text("lbl5".tr,
                                    style: theme.textTheme.titleLarge))
                          ])),
                  SizedBox(height: 5)
                ])),
            bottomNavigationBar: _buildBuy()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 25, top: 22, bottom: 22),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "msg_select_recharge".tr,
            margin: EdgeInsets.only(left: 10)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBuy() {
    return CustomElevatedButton(
        width: 189,
        text: "lbl_buy".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 93, right: 93, bottom: 27),
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
