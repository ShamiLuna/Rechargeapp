import 'controller/nineteen_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NineteenDialog extends StatelessWidget {
  NineteenDialog(this.controller, {Key? key}) : super(key: key);

  NineteenController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: GestureDetector(
            onTap: () {
              navi20();
            },
            child: Container(
                margin: EdgeInsets.only(left: 35, right: 92, bottom: 193),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 34),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("lbl_payment_details".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 64),
                  Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: _buildTopUpRowWithPaypall(
                          dynamicText: "lbl_amount".tr,
                          paypall: "lbl_20_00".tr)),
                  SizedBox(height: 26),
                  Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: _buildTopUpRowWithPaypall(
                          dynamicText: "lbl_top_up_type".tr,
                          paypall: "lbl_paypall".tr)),
                  SizedBox(height: 23),
                  Padding(
                      padding: EdgeInsets.only(right: 1),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                                opacity: 0.4,
                                child: Text("lbl_transaction_id".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack900_1)),
                            Text("msg_234_7658_094_678".tr,
                                style: CustomTextStyles.bodySmallBlack900)
                          ])),
                  SizedBox(height: 24),
                  Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                                opacity: 0.4,
                                child: Text("lbl_time_date".tr,
                                    style:
                                        CustomTextStyles.bodySmallBlack900_1)),
                            Text("msg_01_03_22_11_00".tr,
                                style: CustomTextStyles.bodySmallBlack900)
                          ])),
                  SizedBox(height: 65),
                  CustomElevatedButton(
                      text: "msg_choose_payment_methode".tr.toUpperCase(),
                      buttonStyle: CustomButtonStyles.fillBlueGray),
                  SizedBox(height: 45),
                  Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 22,
                                width: 17,
                                margin:
                                    EdgeInsets.only(top: 11, bottom: 21),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgVector5,
                                          height: 6,
                                          width: 9,
                                          alignment: Alignment.center),
                                      Opacity(
                                          opacity: 0.5,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle55,
                                              height: 22,
                                              width: 17,
                                              alignment: Alignment.center))
                                    ])),
                            Expanded(
                                child: Container(
                                    width: 230,
                                    margin: EdgeInsets.only(left: 17),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_all_your_transactions2"
                                                  .tr,
                                              style: CustomTextStyles
                                                  .bodySmallff000000),
                                          TextSpan(
                                              text: "msg_terms_conditions".tr,
                                              style: CustomTextStyles
                                                  .labelLargeffff897e)
                                        ]),
                                        textAlign: TextAlign.left)))
                          ])),
                  SizedBox(height: 29)
                ]))));
  }

  /// Common widget
  Widget _buildTopUpRowWithPaypall({
    required String dynamicText,
    required String paypall,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.4,
          child: Text(dynamicText,
              style: CustomTextStyles.bodySmallBlack900_1
                  .copyWith(color: appTheme.black900.withOpacity(0.49)))),
      Text(paypall,
          style: CustomTextStyles.bodySmallBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the eightScreen when the action is triggered.
  navi20() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );
  }
}
