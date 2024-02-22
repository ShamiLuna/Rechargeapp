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
                    width: 395,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 10),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 56),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBackBlack900,
                                            height: 2,
                                            width: 32,
                                            alignment: Alignment.centerLeft,
                                            onTap: () {
                                              onTapImgBack();
                                            }),
                                        SizedBox(height: 18),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: 108,
                                                width: 137,
                                                margin: EdgeInsets.only(
                                                    right: 62),
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
                                                                          15,
                                                                      bottom:
                                                                          37),
                                                              child: Row(
                                                                  children: [
                                                                    Text(
                                                                        "lbl2"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .robotoOnPrimary),
                                                                    Container(
                                                                        height: 3
                                                                            ,
                                                                        width: 3
                                                                            ,
                                                                        margin: EdgeInsets.only(
                                                                            left: 7
                                                                                ),
                                                                        decoration:
                                                                            BoxDecoration(border: Border.all(color: appTheme.blueGray900, width: 1)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              margin:
                                                                  EdgeInsets.only(
                                                                      right:
                                                                          29),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          7,
                                                                      vertical:
                                                                          5),
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
                                                                            10),
                                                                    Container(
                                                                        height: 6
                                                                            ,
                                                                        width: 6
                                                                            ,
                                                                        margin: EdgeInsets.only(
                                                                            left: 15
                                                                                ),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.whiteA700,
                                                                            borderRadius: BorderRadius.circular(3))),
                                                                    SizedBox(
                                                                        height:
                                                                            28),
                                                                    Container(
                                                                        height: 18
                                                                            ,
                                                                        width: 18
                                                                            ,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onError,
                                                                            borderRadius: BorderRadius.circular(9))),
                                                                    SizedBox(
                                                                        height:
                                                                            27),
                                                                    Container(
                                                                        height: 6
                                                                            ,
                                                                        width: 6
                                                                            ,
                                                                        margin: EdgeInsets.only(
                                                                            left: 31
                                                                                ),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray900,
                                                                            borderRadius: BorderRadius.circular(3)))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgUndrawForgotP,
                                                          height: 70,
                                                          width: 400,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                              ))
                                                    ]))),
                                        SizedBox(height: 54),
                                        Opacity(
                                            opacity: 0.8,
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                style: CustomTextStyles
                                                    .titleLargeRobotoPrimarySemiBold)),
                                        SizedBox(height: 128),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4),
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
                                                    EdgeInsets.fromLTRB(26,
                                                        22, 26, 20))),
                                        SizedBox(height: 231),
                                        CustomElevatedButton(
                                            text: "lbl_next".tr.toUpperCase(),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 4),
                                            buttonTextStyle: CustomTextStyles
                                                .titleSmallRoboto,
                                            onPressed: () {
                                              navitosix();
                                            }),
                                        SizedBox(height: 2)
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
