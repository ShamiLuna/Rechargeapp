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
    var otp;
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 395,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 1000,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 21, vertical: 28),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 744,
                                        width: 333,
                                        decoration: BoxDecoration(
                                            color: appTheme.gray90001,
                                            borderRadius:
                                                BorderRadius.circular(32)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 28),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_enter_code".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeRobotoPrimary),
                                              SizedBox(height: 16),
                                              SizedBox(
                                                  width: 187,
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
                                              SizedBox(height: 37),
                                              Container(
                                                  width: 108,
                                                  margin: EdgeInsets.only(
                                                      left: 80, right: 86),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 36),
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
                                                        SizedBox(height: 23),
                                                        Container(
                                                            height:
                                                                18,
                                                            width: 18,
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onError,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            9)))
                                                      ])),
                                              SizedBox(height: 106),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 6),
                                                  child:
                                                  // TextFormField(
                                                  //
                                                  //     ),
//                                                       Obx(() =>
                                                      CustomPinCodeTextField(
                                                          context: Get.context!,
                                                          // controller: controller
                                                          //     .otpController
                                                          //     .value,
                                                          onChanged:
                                                              (code) {
                                                            otp = code;
                                                            ThreeController.instance.verifyOTP(otp);
                                                              })
// )
),
                                              SizedBox(height: 14),
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
                                                                left: 3),
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
                                              SizedBox(height: 197),
                                              CustomElevatedButton(
                                                  text: "lbl_continue"
                                                      .tr
                                                      .toUpperCase(),
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleSmallRoboto,
                                                  onPressed: () {
                                                    // navitifour();
                                                    ThreeController.instance.verifyOTP(otp);
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
