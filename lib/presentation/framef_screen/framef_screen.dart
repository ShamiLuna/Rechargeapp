import 'controller/framef_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FramefScreen extends GetWidget<FramefController> {
  FramefScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                                  margin: EdgeInsets.only(bottom: 10.v),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 56.h),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBackBlack900,
                                            height: 2.v,
                                            width: 32.h,
                                            alignment: Alignment.centerLeft,
                                            onTap: () {
                                              onTapImgBack();
                                            }),
                                        SizedBox(height: 18.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: 108.v,
                                                width: 137.h,
                                                margin: EdgeInsets.only(
                                                    right: 62.h),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          15.h,
                                                                      bottom:
                                                                          37.v),
                                                              child: Row(
                                                                  children: [
                                                                    Text(
                                                                        "lbl2"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .robotoOnPrimary),
                                                                    Container(
                                                                        height: 3
                                                                            .adaptSize,
                                                                        width: 3
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left: 7
                                                                                .h),
                                                                        decoration:
                                                                            BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1.h)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              margin:
                                                                  EdgeInsets.only(
                                                                      right:
                                                                          29.h),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          7.h,
                                                                      vertical:
                                                                          5.v),
                                                              decoration: AppDecoration
                                                                  .fillBlue
                                                                  .copyWith(
                                                                      borderRadius: BorderRadiusStyle
                                                                          .circleBorder54),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                        height:
                                                                            10.v),
                                                                    Container(
                                                                        height: 6
                                                                            .adaptSize,
                                                                        width: 6
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left: 15
                                                                                .h),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.whiteA700,
                                                                            borderRadius: BorderRadius.circular(3.h))),
                                                                    SizedBox(
                                                                        height:
                                                                            28.v),
                                                                    Container(
                                                                        height: 18
                                                                            .adaptSize,
                                                                        width: 18
                                                                            .adaptSize,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onError,
                                                                            borderRadius: BorderRadius.circular(9.h))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Container(
                                                                        height: 6
                                                                            .adaptSize,
                                                                        width: 6
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left: 31
                                                                                .h),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray900,
                                                                            borderRadius: BorderRadius.circular(3.h)))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgUndrawForgotP,
                                                          height: 70.v,
                                                          width: 400.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                              ))
                                                    ]))),
                                        SizedBox(height: 54.v),
                                        Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                style: CustomTextStyles
                                                    .titleLargeRobotoPrimarySemiBold)),
                                        SizedBox(height: 128.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4.h),
                                            child: CustomFloatingTextField(
                                                controller:
                                                    controller.emailController,
                                                labelText: "lbl_email_id".tr,
                                                labelStyle: CustomTextStyles
                                                    .bodySmallRobotoWhiteA700_1,
                                                hintText: "lbl_email_id".tr,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_email"
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(26.h,
                                                        22.v, 26.h, 20.v))),
                                        SizedBox(height: 231.v),
                                        CustomElevatedButton(
                                            text: "lbl_next".tr.toUpperCase(),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 4.h),
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallRoboto,
                                            onPressed: () {
                                              navitosix();
                                            }),
                                        SizedBox(height: 2.v)
                                      ]))))
                    ])))));
  }

  /// Navigates to the fiveScreen when the action is triggered.
  onTapImgBack() {
    Get.toNamed(
      AppRoutes.fiveScreen,
    );
  }

  /// Navigates to the sixScreen when the action is triggered.
  navitosix() {
    Get.offNamed(
      AppRoutes.sixScreen,
    );
  }
}
