import 'controller/twentynine_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TwentynineDialog extends StatelessWidget {
  TwentynineDialog(this.controller, {Key? key}) : super(key: key);

  TwentynineController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: _buildDoneSection());
  }

  /// Section Widget
  Widget _buildDoneSection() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.only(left: 45, right: 45, bottom: 17),
        color: appTheme.gray900,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 700,
            width: 325,
            padding: EdgeInsets.symmetric(vertical: 4),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 230,
                      margin: EdgeInsets.only(right: 33, bottom: 59),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_all_your_transactions2".tr,
                                style: CustomTextStyles.bodySmallff000000),
                            TextSpan(
                                text: "msg_terms_conditions".tr,
                                style: CustomTextStyles.labelLargeffff897e)
                          ]),
                          textAlign: TextAlign.left))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding:
                          EdgeInsets.only(left: 25, top: 30, right: 25),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("lbl_payment_details".tr,
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 64),
                        Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: _buildTopUpSection(
                                topupType: "lbl_amount".tr,
                                paypall: "lbl_20_00".tr)),
                        SizedBox(height: 26),
                        Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: _buildTopUpSection(
                                topupType: "lbl_top_up_type".tr,
                                paypall: "lbl_paypall".tr)),
                        SizedBox(height: 23),
                        Padding(
                            padding: EdgeInsets.only(right: 1),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                      opacity: 0.4,
                                      child: Text("lbl_transaction_id".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack900_1)),
                                  Text("msg_234_7658_094_678".tr,
                                      style: CustomTextStyles.bodySmallBlack900)
                                ])),
                        SizedBox(height: 24),
                        Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                      opacity: 0.4,
                                      child: Text("lbl_time_date".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack900_1)),
                                  Text("msg_01_03_22_11_00".tr,
                                      style: CustomTextStyles.bodySmallBlack900)
                                ])),
                        SizedBox(height: 65),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 23, vertical: 13),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3),
                                  Text(
                                      "msg_choose_payment_methode"
                                          .tr
                                          .toUpperCase(),
                                      style: theme.textTheme.titleSmall)
                                ]))
                      ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkBlueGray300,
                  height: 22,
                  width: 17,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 27, bottom: 81)),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 27, vertical: 45),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 131,
                                      width: 146,
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            CustomIconButton(
                                                height: 28,
                                                width: 28,
                                                padding: EdgeInsets.all(7),
                                                alignment: Alignment.topLeft,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCheckmarkWhiteA700)),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 15),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5,
                                                            vertical: 6),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                ImageConstant
                                                                    .imgGroup842),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          SizedBox(
                                                              height: 14),
                                                          Container(
                                                              height:
                                                                  5,
                                                              width:
                                                                  5,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          37),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2))),
                                                          SizedBox(
                                                              height: 19),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  height: 2
                                                                      ,
                                                                  width: 2
                                                                      ,
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .teal200,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              1)))),
                                                          SizedBox(
                                                              height: 74),
                                                          Container(
                                                              height:
                                                                  5,
                                                              width:
                                                                  5,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .indigo400,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2)))
                                                        ])))
                                          ])),
                                  Container(
                                      height: 2,
                                      width: 2,
                                      margin: EdgeInsets.only(
                                          left: 39, top: 55, bottom: 74),
                                      decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                          borderRadius:
                                              BorderRadius.circular(1)))
                                ]),
                            SizedBox(height: 36),
                            Padding(
                                padding: EdgeInsets.only(left: 28),
                                child: Text("msg_transaction_successful".tr,
                                    style: CustomTextStyles
                                        .titleLargeTitilliumWebRegular)),
                            SizedBox(height: 38),
                            Opacity(
                                opacity: 0.4,
                                child: Container(
                                    width: 260,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: Text("msg_lorem_ipsum_dolor".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(height: 1.83)))),
                            SizedBox(height: 34),
                            CustomElevatedButton(
                                text: "lbl_done".tr.toUpperCase(),
                                margin: EdgeInsets.only(right: 12),
                                onPressed: () {
                                  onTapDone();
                                })
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildTopUpSection({
    required String topupType,
    required String paypall,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.4,
          child: Text(topupType,
              style: CustomTextStyles.bodySmallBlack900_1
                  .copyWith(color: appTheme.black900.withOpacity(0.49)))),
      Text(paypall,
          style: CustomTextStyles.bodySmallBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapDone() {
    Get.toNamed(
      AppRoutes.eightScreen,
    );
  }
}
