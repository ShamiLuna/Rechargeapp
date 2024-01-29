import 'controller/five_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class FiveScreen extends GetWidget<FiveController> {
  FiveScreen({Key? key}) : super(key: key);

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
                                  height: SizeUtils.height,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                      left: 10.h, right: 10.h, bottom: 10.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 21.h, vertical: 20.v),
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
                                                    left: 28.h,
                                                    right: 28.h,
                                                    bottom: 27.v),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          width: 108.h,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      84.h),
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      8.h,
                                                                  vertical:
                                                                      28.v),
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: fs.Svg(
                                                                      ImageConstant
                                                                          .imgGroup802),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                SizedBox(
                                                                    height:
                                                                        34.v),
                                                                Container(
                                                                    height: 18
                                                                        .adaptSize,
                                                                    width: 18
                                                                        .adaptSize,
                                                                    decoration: BoxDecoration(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .onError,
                                                                        borderRadius:
                                                                            BorderRadius.circular(9.h)))
                                                              ])),
                                                      SizedBox(height: 32.v),
                                                      Opacity(
                                                          opacity: 0.8,
                                                          child: Text(
                                                              "lbl_login".tr,
                                                              style: CustomTextStyles
                                                                  .titleLargeRobotoPrimarySemiBold)),
                                                      SizedBox(height: 10.v),
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
                                                                  .bodySmallRobotoWhiteA700Light_1)),
                                                      SizedBox(height: 45.v),
                                                      SizedBox(
                                                          height: 66.v,
                                                          width: 275.h,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 26
                                                                                .h,
                                                                            vertical: 20
                                                                                .v),
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder6,
                                                                            image: DecorationImage(
                                                                                image: fs.Svg(ImageConstant
                                                                                    .imgGroup812),
                                                                                fit: BoxFit
                                                                                    .cover)),
                                                                        child: Opacity(
                                                                            opacity:
                                                                                0.5,
                                                                            child:
                                                                                Text("lbl_roday_basreng".tr, style: CustomTextStyles.bodySmallRobotoWhiteA700_1)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Opacity(
                                                                        opacity:
                                                                            0.5,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 28.h),
                                                                            child: Text("lbl_name".tr, style: CustomTextStyles.bodySmallRobotoWhiteA700_1))))
                                                              ])),
                                                      SizedBox(height: 26.v),
                                                      Obx(() =>
                                                          CustomFloatingTextField(
                                                              controller: controller
                                                                  .passwordController,
                                                              labelText:
                                                                  "lbl_password"
                                                                      .tr,
                                                              labelStyle:
                                                                  CustomTextStyles
                                                                      .bodySmallRobotoWhiteA700_1,
                                                              hintText:
                                                                  "lbl_password"
                                                                      .tr,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              textInputType:
                                                                  TextInputType
                                                                      .visiblePassword,
                                                              obscureText:
                                                                  controller
                                                                      .isShowPassword
                                                                      .value,
                                                              prefix: Container(
                                                                  width: 5
                                                                      .adaptSize),
                                                              prefixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          66.v),
                                                              suffix: InkWell(
                                                                  onTap: () {
                                                                    controller
                                                                            .isShowPassword
                                                                            .value =
                                                                        !controller
                                                                            .isShowPassword
                                                                            .value;
                                                                  },
                                                                  child: Container(margin: EdgeInsets.symmetric(horizontal: 18.h), child: CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 13.v, width: 20.h))),
                                                              suffixConstraints: BoxConstraints(maxHeight: 66.v),
                                                              validator: (value) {
                                                                if (value ==
                                                                        null ||
                                                                    (!isValidPassword(
                                                                        value,
                                                                        isRequired:
                                                                            true))) {
                                                                  return "err_msg_please_enter_valid_password"
                                                                      .tr;
                                                                }
                                                                return null;
                                                              })),
                                                      SizedBox(height: 7.v),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    navitoframe();
                                                                  },
                                                                  child: Text(
                                                                      "msg_forgot_password"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallRobotoPrimary))),
                                                      SizedBox(height: 147.v),
                                                      CustomElevatedButton(
                                                          text: "lbl_continue"
                                                              .tr
                                                              .toUpperCase(),
                                                          buttonTextStyle:
                                                              CustomTextStyles
                                                                  .titleSmallRoboto,
                                                          onPressed: () {
                                                            navito8();
                                                          }),
                                                      SizedBox(height: 7.v),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 1
                                                                            .v),
                                                                child: Text(
                                                                    "msg_don_t_have_an_account"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallRobotoWhiteA700Light)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 7
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_signup"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleSmallRobotoPrimary
                                                                        .copyWith(
                                                                            decoration:
                                                                                TextDecoration.underline)))
                                                          ])
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Navigates to the framefScreen when the action is triggered.
  navitoframe() {
    Get.offNamed(
      AppRoutes.framefScreen,
    );
  }

  /// Navigates to the eightScreen when the action is triggered.
  navito8() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );
  }
}
