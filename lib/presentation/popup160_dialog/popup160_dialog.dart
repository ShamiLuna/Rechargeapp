import 'controller/popup160_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Popup160Dialog extends StatelessWidget {
  Popup160Dialog(this.controller, {Key? key}) : super(key: key);

  Popup160Controller controller;

  @override
  Widget build(BuildContext context) {
    return _buildDoneSection();
  }

  /// Section Widget
  Widget _buildDoneSection() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray900,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 555,
            width: 325,
            padding: EdgeInsets.symmetric(vertical: 34),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 25, right: 25, bottom: 29),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: _buildTopUpSectionWithPaypall(
                                dynamicText: "lbl_amount".tr,
                                paypall: "lbl_20_00".tr)),
                        SizedBox(height: 26),
                        Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: _buildTopUpSectionWithPaypall(
                                dynamicText: "lbl_top_up_type".tr,
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
                        GestureDetector(
                            onTap: () {
                              onTapChoosePay();
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23, vertical: 13),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
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
                                    ]))),
                        SizedBox(height: 45),
                        Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCheckmarkBlueGray300,
                                      height: 22,
                                      width: 17,
                                      margin: EdgeInsets.only(
                                          top: 11, bottom: 21)),
                                  Expanded(
                                      child: Container(
                                          width: 230,
                                          margin: EdgeInsets.only(left: 17),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "msg_all_your_transactions2"
                                                            .tr,
                                                    style: CustomTextStyles
                                                        .bodySmallffffffff),
                                                TextSpan(
                                                    text: "msg_terms_conditions"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .labelLargeffff897e)
                                              ]),
                                              textAlign: TextAlign.left)))
                                ]))
                      ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Text("lbl_payment_details".tr,
                      style: theme.textTheme.titleMedium)),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 33, vertical: 45),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 131,
                                      width: 146,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 33,
                                                            vertical: 20),
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
                                                          Container(
                                                              height:
                                                                  5,
                                                              width:
                                                                  5,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              2))),
                                                          SizedBox(
                                                              height: 19),
                                                          Container(
                                                              height:
                                                                  2,
                                                              width:
                                                                  2,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          23),
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .teal200,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1))),
                                                          SizedBox(height: 65)
                                                        ]))),
                                            CustomIconButton(
                                                height: 28,
                                                width: 28,
                                                padding: EdgeInsets.all(7),
                                                alignment: Alignment.topRight,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCheckmarkWhiteA700)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                    height: 5,
                                                    width: 5,
                                                    margin: EdgeInsets.only(
                                                        right: 11,
                                                        bottom: 6),
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.indigo400,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2))))
                                          ])),
                                  Container(
                                      height: 2,
                                      width: 2,
                                      margin: EdgeInsets.only(
                                          left: 33, top: 55, bottom: 74),
                                      decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                          borderRadius:
                                              BorderRadius.circular(1)))
                                ]),
                            SizedBox(height: 34),
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_transaction_successful2".tr,
                                    style: CustomTextStyles.titleLargeRoboto)),
                            SizedBox(height: 39),
                            Opacity(
                                opacity: 0.4,
                                child: Container(
                                    width: 230,
                                    margin:
                                        EdgeInsets.only(left: 5, right: 21),
                                    child: Text("msg_lorem_ipsum_dolor".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles.bodySmallRoboto
                                            .copyWith(height: 1.83)))),
                            SizedBox(height: 33),
                            CustomElevatedButton(
                                text: "lbl_done2".tr.toUpperCase(),
                                margin: EdgeInsets.only(right: 3),
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallRoboto_1,
                                onPressed: () {
                                  navito8();
                                })
                          ])))
            ])));
  }

  /// Common widget
  Widget _buildTopUpSectionWithPaypall({
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

  /// Navigates to the manualVerification155Screen when the action is triggered.
  onTapChoosePay() {
    Get.toNamed(
      AppRoutes.manualVerification155Screen,
    );
  }

  /// Navigates to the eightScreen when the action is triggered.
  navito8() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );
  }
}
