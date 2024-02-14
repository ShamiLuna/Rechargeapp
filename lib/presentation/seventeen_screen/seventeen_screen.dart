import 'controller/seventeen_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SeventeenScreen extends GetWidget<SeventeenController> {
  const SeventeenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 34.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgCloseWhiteA70015x13,
                                        height: 15.v,
                                        width: 13.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        onTap: () {
                                          onTapImgClose();
                                        }),
                                    SizedBox(height: 48.v),
                                    Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.h, vertical: 42.v),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_payment_details".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeTitilliumWebPrimary),
                                              SizedBox(height: 55.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 4.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.4,
                                                            child: Text(
                                                                "lbl_amount".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        Text("lbl_20_00".tr,
                                                            style: CustomTextStyles
                                                                .labelLargeSemiBold)
                                                      ])),
                                              SizedBox(height: 26.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text(
                                                            "lbl_top_up_type"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Text("lbl_paypall".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA700_1)
                                                  ]),
                                              SizedBox(height: 26.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text(
                                                            "lbl_transaction_id"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Text(
                                                        "msg_234795_7456_0008"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .bodySmallWhiteA700_1)
                                                  ]),
                                              SizedBox(height: 26.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 7.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.4,
                                                            child: Text(
                                                                "lbl_time_date"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        Text(
                                                            "msg_01_03_22_11_00"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallWhiteA700_1)
                                                      ])),
                                              SizedBox(height: 59.v),
                                              CustomElevatedButton(
                                                  height: 60.v,
                                                  text:
                                                      "msg_choose_payment_methode"
                                                          .tr,
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL15,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleSmall14_1,
                                                  onPressed: () {
                                                    onTapChoosePaymentMethode();
                                                  }),
                                              SizedBox(height: 39.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 8.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCheckmarkWhiteA70022x17,
                                                            height: 22.v,
                                                            width: 17.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 11.v,
                                                                    bottom:
                                                                        21.v)),
                                                        Expanded(
                                                            child: Container(
                                                                width: 230.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 17
                                                                            .h),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "msg_all_your_transactions2".tr,
                                                                              style: CustomTextStyles.bodySmallffffffff),
                                                                          TextSpan(
                                                                              text: "msg_terms_conditions".tr,
                                                                              style: CustomTextStyles.labelLargeffa456f6)
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left)))
                                                      ])),
                                              SizedBox(height: 14.v)
                                            ])),
                                    SizedBox(height: 48.v),
                                    CustomElevatedButton(
                                        text: "lbl_send_money".tr.toUpperCase(),
                                        margin: EdgeInsets.only(left: 5.h),
                                      onPressed: () {
                                        onTapChoosePaymentMethods();
                                      },

                                    ),

                                    SizedBox(height: 24.v)
                                  ]))))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }

  /// Navigates to the thirteenScreen when the action is triggered.
  onTapChoosePaymentMethode() {
    Get.toNamed(
      AppRoutes.thirteenScreen,
    );
  }
  onTapChoosePaymentMethods() {
    Get.toNamed(
      AppRoutes.twentysixScreen,
    );
  }
}
