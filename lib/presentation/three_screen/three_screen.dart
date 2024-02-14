import 'controller/three_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ThreeScreen extends GetWidget<ThreeController> {
  const ThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
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
                                  horizontal: 21.h, vertical: 28.v),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 744.v,
                                        width: 333.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray90001,
                                            borderRadius:
                                                BorderRadius.circular(32.h)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 28.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_enter_code".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeRobotoPrimary),
                                              SizedBox(height: 16.v),
                                              SizedBox(
                                                  width: 187.h,
                                                  child: Text(
                                                      "msg_enter_the_6_digit"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .bodySmallRobotoWhiteA700Light_1)),
                                              SizedBox(height: 37.v),
                                              Container(
                                                  width: 108.h,
                                                  margin: EdgeInsets.only(
                                                      left: 80.h, right: 86.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h,
                                                      vertical: 36.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgGroup765),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        SizedBox(height: 23.v),
                                                        Container(
                                                            height:
                                                                18.adaptSize,
                                                            width: 18.adaptSize,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onError,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            9.h)))
                                                      ])),
                                              SizedBox(height: 106.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6.h),
                                                  child: Obx(() =>
                                                      CustomPinCodeTextField(
                                                          context: Get.context!,
                                                          controller: controller
                                                              .otpController
                                                              .value,
                                                          onChanged:
                                                              (value) {}))),
                                              SizedBox(height: 14.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.5,
                                                        child: Text(
                                                            "lbl_resend_code_in"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallWhiteA700)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_43"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .labelLargeffa456f6),
                                                                  TextSpan(
                                                                      text: "lbl_second"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallff808080)
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left))
                                                  ]),
                                              SizedBox(height: 197.v),
                                              CustomElevatedButton(
                                                  text: "lbl_continue"
                                                      .tr
                                                      .toUpperCase(),
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleSmallRoboto,
                                                  onPressed: () {
                                                    navitifour();
                                                  })
                                            ])))
                              ]))))
                ]))));
  }

  /// Navigates to the fourScreen when the action is triggered.
  navitifour() {
    Get.offNamed(
      AppRoutes.fourScreen,
    );
  }
}
