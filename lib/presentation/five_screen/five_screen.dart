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
                    height: 810,
                    width: 395,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 10),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: 810,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(
                                      left: 10, right: 10, bottom: 10),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 21, vertical: 20),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 771,
                                                width: 333,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray90001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            32)))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 28,
                                                    right: 28,
                                                    bottom: 27),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          height: 108,
                                                          width: 108,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      84),
                                                          padding:
                                                              EdgeInsets.symmetric(
                                                                  horizontal:
                                                                      8,
                                                                  vertical:
                                                                      28),
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
                                                                        34),
                                                                Container(
                                                                    height: 18
                                                                        ,
                                                                    width: 18
                                                                        ,
                                                                    decoration: BoxDecoration(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .onError,
                                                                        borderRadius:
                                                                            BorderRadius.circular(9)))
                                                              ])),
                                                      SizedBox(height: 32),
                                                      Opacity(
                                                          opacity: 0.8,
                                                          child: Text(
                                                              "lbl_login".tr,
                                                              style: CustomTextStyles
                                                                  .titleLargeRobotoPrimarySemiBold)),
                                                      SizedBox(height: 10),
                                                      SizedBox(
                                                          width: 178,
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
                                                      SizedBox(height: 45),
                                                      SizedBox(
                                                          height: 66,
                                                          width: 275,
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
                                                                        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 20),
                                                                        decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder6, image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup812), fit: BoxFit.cover)),
                                                                        child: Opacity(
                                                                          opacity:
                                                                              0.5,
                                                                          child:
                                                                              TextFormField(),
                                                                          // Text("lbl_roday_basreng".tr, style: CustomTextStyles.bodySmallRobotoWhiteA700_1)
                                                                        ))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Opacity(
                                                                        opacity:
                                                                            0.5,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 28),
                                                                            child: Text("lbl_name".tr, style: CustomTextStyles.bodySmallRobotoWhiteA700_1))))
                                                              ])),
                                                      SizedBox(height: 26),
                                                      Obx(() =>
                                                          CustomFloatingTextField(
                                                              // controller: controller
                                                              //     .passwordController,
                                                              labelText:
                                                                  "lbl_password"
                                                                      .tr,
                                                              labelStyle: CustomTextStyles
                                                                  .bodySmallRobotoWhiteA700_1,
                                                              // hintText:
                                                              //     "lbl_password"
                                                              //         .tr,
                                                              textInputAction:
                                                                  TextInputAction
                                                                      .done,
                                                              textInputType:
                                                                  TextInputType
                                                                      .visiblePassword,
                                                              obscureText: controller
                                                                  .isShowPassword
                                                                  .value,
                                                              prefix: Container(
                                                                  width: 9
                                                                      ),
                                                              prefixConstraints:
                                                                  BoxConstraints(
                                                                      maxHeight:
                                                                          66),
                                                              suffix: InkWell(
                                                                  onTap: () {
                                                                    controller
                                                                            .isShowPassword
                                                                            .value =
                                                                        !controller
                                                                            .isShowPassword
                                                                            .value;
                                                                  },
                                                                  child: Container(
                                                                      margin: EdgeInsets.symmetric(horizontal: 18),
                                                                      child: CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 13, width: 20))),
                                                              suffixConstraints: BoxConstraints(maxHeight: 66),
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
                                                      SizedBox(height: 7),
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
                                                      SizedBox(height: 130),
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
                                                      SizedBox(height: 7),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 1
                                                                            ),
                                                                child: Text(
                                                                    "msg_don_t_have_an_account"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmallRobotoWhiteA700Light)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 7
                                                                            ),
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
