import 'package:get_storage/get_storage.dart';

import 'controller/four_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FourScreen extends GetWidget<FourController> {
  FourScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 395.h,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 10.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: SizeUtils.height,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                      left: 10.h, right: 10.h, bottom: 10.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 21.h, vertical: 19.v),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 771.v,
                                                width: 333.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray90001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32.h)))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 29.h,
                                                    right: 29.h,
                                                    bottom: 53.v),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      _buildEmailFloatingTextField(),
                                                      SizedBox(height: 27.v),
                                                      _buildNameFloatingTextField(),
                                                      SizedBox(height: 24.v),
                                                      _buildPasswordFloatingTextField(),
                                                      SizedBox(height: 74.v),
                                                      _buildContinueButton()
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 75.h,
                                                    top: 55.v,
                                                    right: 78.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("lbl_welcome".tr,
                                                          style: CustomTextStyles
                                                              .titleLargeRobotoPrimary),
                                                      SizedBox(height: 14.v),
                                                      SizedBox(
                                                          width: 178.h,
                                                          child: Text(
                                                              "msg_set_a_name_for_your"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .bodySmallRobotoWhiteA700Light_1))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgVector,
                                            height: 108.adaptSize,
                                            width: 108.adaptSize,
                                            alignment: Alignment.topCenter,
                                            margin:
                                                EdgeInsets.only(top: 155.v)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 112.h,
                                                    top: 153.v,
                                                    right: 115.h),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 30.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup764),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 34.v),
                                                      Container(
                                                          height: 18.adaptSize,
                                                          width: 18.adaptSize,
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onError,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          9.h)))
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildEmailFloatingTextField() {
    return CustomFloatingTextField(
        controller: controller.emailFloatingTextFieldController,
        labelText: "lbl_email".tr,
        labelStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
        hintText: "lbl_email".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        
        contentPadding: EdgeInsets.fromLTRB(26.h, 19.v, 26.h, 21.v));
  }

  /// Section Widget
  Widget _buildNameFloatingTextField() {
    return CustomFloatingTextField(
        controller: controller.nameFloatingTextFieldController,
        labelText: "lbl_name".tr,
        labelStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
        hintText: "lbl_name".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoWhiteA700,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v));
  }

  /// Section Widget
  Widget _buildPasswordFloatingTextField() {
    return Obx(() => CustomFloatingTextField(
        controller: controller.passwordFloatingTextFieldController,
        labelText: "lbl_password".tr,
        labelStyle: CustomTextStyles.bodySmallWhiteA700,
        hintText: "lbl_password".tr,
        hintStyle: CustomTextStyles.bodySmallWhiteA700,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: controller.isShowPassword.value,
        prefix: Container(width: 5.adaptSize),
        prefixConstraints: BoxConstraints(maxHeight: 68.v),
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgUserWhiteA70013x20,
                    height: 13.v,
                    width: 20.h))),
        suffixConstraints: BoxConstraints(maxHeight: 68.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.fromLTRB(26.h, -10.v, 26.h, 50.v)));
  }

  /// Section Widget
  Widget _buildContinueButton() {
    return CustomElevatedButton(
        text: "lbl_continue".tr.toUpperCase(),
        buttonTextStyle: CustomTextStyles.titleSmallRoboto,
        onPressed: () {
          // print("The Email is ${storage.read("email")}");
          n5();
        });
  }

  /// Navigates to the fiveScreen when the action is triggered.
  n5() {
    Get.offNamed(
      AppRoutes.fiveScreen,
    );
  }
}
