import 'controller/twentyfive_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TwentyfiveScreen extends GetWidget<TwentyfiveController> {
  const TwentyfiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 34),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 15,
                                        width: 13,
                                        onTap: () {
                                          onTapImgClose();
                                        }),
                                    SizedBox(height: 48),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 42),
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
                                              SizedBox(height: 55),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 4),
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
                                              SizedBox(height: 26),
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
                                              SizedBox(height: 26),
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
                                              SizedBox(height: 26),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 7),
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
                                              SizedBox(height: 59),
                                              CustomElevatedButton(
                                                  height: 60,
                                                  text:
                                                      "msg_choose_payment_methode"
                                                          .tr,
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillPrimaryTL15,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleSmallGray5002,
                                                  onPressed: () {
                                                    onTapChoosePaymentMethode();
                                                  }),
                                              SizedBox(height: 39),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 8),
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
                                                            height: 22,
                                                            width: 17,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 11,
                                                                    bottom:
                                                                        21)),
                                                        Expanded(
                                                            child: Container(
                                                                width: 230,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 17
                                                                            ),
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
                                              SizedBox(height: 14)
                                            ])),
                                    SizedBox(height: 48),
                                    CustomElevatedButton(
                                        text: "lbl_send_money".tr.toUpperCase(),
                                        onPressed: () {
                                          onTapSendMoney();
                                        }),
                                    SizedBox(height: 24)
                                  ]))))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }

  /// Navigates to the twentyfourScreen when the action is triggered.
  onTapChoosePaymentMethode() {
    Get.toNamed(
      AppRoutes.twentyfourScreen,
    );
  }

  /// Navigates to the twentysixScreen when the action is triggered.
  onTapSendMoney() {
    Get.toNamed(
      AppRoutes.twentysixScreen,
    );
  }
}
