import 'controller/six_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SixScreen extends GetWidget<SixController> {
  SixScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: 407,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 20),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  padding: EdgeInsets.only(
                                      left: 66, top: 61, right: 66),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 120,
                                            width: 164,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBackWhiteA700,
                                                      height: 2,
                                                      width: 32,
                                                      alignment:
                                                          Alignment.topLeft,
                                                      onTap: () {
                                                        onTapImgBack();
                                                      }),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height: 18,
                                                          width: 18,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 24),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onError,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          9)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: SizedBox(
                                                          height: 108,
                                                          width: 130,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: 108
                                                                            ,
                                                                        width: 108
                                                                            ,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blue5001,
                                                                            borderRadius: BorderRadius.circular(54)))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGroup86,
                                                                    height:
                                                                        75,
                                                                    width:
                                                                        117,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    margin: EdgeInsets.only(
                                                                        bottom:
                                                                            8)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: 68,
                                                                        width: 51,
                                                                        margin: EdgeInsets.only(left: 32),
                                                                        child: Stack(alignment: Alignment.bottomRight, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgUser,
                                                                              height: 68,
                                                                              width: 45,
                                                                              alignment: Alignment.centerLeft),
                                                                          Align(
                                                                              alignment: Alignment.bottomRight,
                                                                              child: Container(
                                                                                  margin: EdgeInsets.only(left: 31),
                                                                                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                                                                                  decoration: AppDecoration.gradientBlueToBlue.copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    SizedBox(height: 2),
                                                                                    Text("lbl".tr, style: CustomTextStyles.labelLargeRobotoOnError)
                                                                                  ])))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height: 20,
                                                          width: 39,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 29),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                Opacity(
                                                                    opacity:
                                                                        0.5,
                                                                    child: Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomRight,
                                                                        child: Container(
                                                                            height:
                                                                                17,
                                                                            width: 28,
                                                                            decoration: BoxDecoration(color: appTheme.blue20087, borderRadius: BorderRadius.circular(3))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Card(
                                                                        clipBehavior:
                                                                            Clip
                                                                                .antiAlias,
                                                                        elevation:
                                                                            0,
                                                                        margin:
                                                                            EdgeInsets.all(
                                                                                0),
                                                                        color: appTheme
                                                                            .gray5001,
                                                                        shape: RoundedRectangleBorder(
                                                                            side:
                                                                                BorderSide(color: appTheme.whiteA700, width: 1),
                                                                            borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                        child: Container(
                                                                            height: 16,
                                                                            width: 37,
                                                                            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                                                                            decoration: AppDecoration.outlineWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
                                                                            child: Stack(alignment: Alignment.topCenter, children: [
                                                                              Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 12), child: Text("lbl2".tr, style: CustomTextStyles.robotoOnPrimary))),
                                                                              Align(
                                                                                  alignment: Alignment.topCenter,
                                                                                  child: SizedBox(
                                                                                      height: 4,
                                                                                      width: 28,
                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                        Align(alignment: Alignment.centerRight, child: Container(height: 3, width: 3, margin: EdgeInsets.only(right: 5), decoration: BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1)))),
                                                                                        Align(
                                                                                            alignment: Alignment.center,
                                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                              SizedBox(
                                                                                                  height: 4,
                                                                                                  width: 3,
                                                                                                  child: Stack(alignment: Alignment.topRight, children: [
                                                                                                    Align(alignment: Alignment.bottomCenter, child: Container(height: 3, width: 3, decoration: BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1)))),
                                                                                                    Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(right: 1), child: Text("lbl3".tr, style: CustomTextStyles.robotoBlack900)))
                                                                                                  ])),
                                                                                              SizedBox(
                                                                                                  height: 4,
                                                                                                  width: 3,
                                                                                                  child: Stack(alignment: Alignment.topRight, children: [
                                                                                                    Align(alignment: Alignment.bottomCenter, child: Container(height: 3, width: 3, decoration: BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1)))),
                                                                                                    Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(right: 1), child: Text("lbl3".tr, style: CustomTextStyles.robotoBlack900)))
                                                                                                  ])),
                                                                                              Container(height: 3, width: 3, decoration: BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1))),
                                                                                              SizedBox(
                                                                                                  height: 4,
                                                                                                  width: 3,
                                                                                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                    Align(alignment: Alignment.topCenter, child: Container(height: 3, width: 3, decoration: BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1)))),
                                                                                                    Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 1), child: Text("lbl2".tr, style: CustomTextStyles.robotoOnPrimary)))
                                                                                                  ])),
                                                                                              Text("lbl2".tr, style: CustomTextStyles.robotoOnPrimary),
                                                                                              SizedBox(
                                                                                                  height: 4,
                                                                                                  width: 3,
                                                                                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                    Align(alignment: Alignment.topCenter, child: Container(height: 3, width: 3, decoration: BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1)))),
                                                                                                    Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 1), child: Text("lbl2".tr, style: CustomTextStyles.robotoOnPrimary)))
                                                                                                  ]))
                                                                                            ]))
                                                                                      ])))
                                                                            ]))))
                                                              ])))
                                                ])),
                                        SizedBox(height: 54),
                                        Opacity(
                                            opacity: 0.8,
                                            child: Text("lbl_reset_password".tr,
                                                style: CustomTextStyles
                                                    .titleLargeRobotoPrimarySemiBold)),
                                        SizedBox(height: 66),
                                        Obx(() => CustomFloatingTextField(
                                            // controller: controller
                                            //     .newpasswordController,
                                            labelText: "lbl_new_password".tr,
                                            labelStyle: CustomTextStyles
                                                .bodySmallRobotoWhiteA700_1,
                                            hintText: "lbl_new_password".tr,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            obscureText:
                                                controller.isShowPassword.value,
                                            prefix:
                                                Container(width: 5),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 65),
                                            suffix: InkWell(
                                                onTap: () {
                                                  controller.isShowPassword
                                                          .value =
                                                      !controller
                                                          .isShowPassword.value;
                                                },
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 18),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEye,
                                                        height: 14,
                                                        width: 20))),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 65),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            })),
                                        SizedBox(height: 66),
                                        CustomFloatingTextField(
                                            // controller:
                                            //     controller.passwordController,
                                            labelText: "lbl_reset_password".tr,
                                            labelStyle: CustomTextStyles
                                                .bodySmallRobotoWhiteA700_1,
                                            hintText: "lbl_reset_password".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            obscureText: true,
                                            prefix:
                                                Container(width: 5),
                                            prefixConstraints:
                                                BoxConstraints(maxHeight: 66),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_password"
                                                    .tr;
                                              }
                                              return null;
                                            }),
                                        SizedBox(height: 67),
                                        CustomElevatedButton(
                                            text: "lbl_submiting"
                                                .tr
                                                .toUpperCase(),
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallRoboto,
                                            onPressed: () {
                                              navito8();
                                            }),
                                        SizedBox(height: 67)
                                      ]))))
                    ])))));
  }

  /// Navigates to the framefScreen when the action is triggered.
  onTapImgBack() {
    Get.toNamed(
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
