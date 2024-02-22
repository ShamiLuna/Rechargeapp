import 'controller/frame_33754_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Frame33754Dialog extends StatelessWidget {
  Frame33754Dialog(this.controller, {Key? key}) : super(key: key);

  Frame33754Controller controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 35, right: 35, bottom: 163),
            padding: EdgeInsets.symmetric(vertical: 13),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 21),
              Text("lbl_payment_details".tr,
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 3),
              SizedBox(
                  height: 600,
                  width: 325,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(right: 4),
                                      child: _buildTopUpSection(
                                          amount: "lbl_amount".tr,
                                          choosePay: "lbl_20_00".tr)),
                                  SizedBox(height: 26),
                                  Padding(
                                      padding: EdgeInsets.only(right: 4),
                                      child: _buildTopUpSection(
                                          amount: "lbl_top_up_type".tr,
                                          choosePay: "lbl_paypall".tr)),
                                  SizedBox(height: 23),
                                  Padding(
                                      padding: EdgeInsets.only(right: 1),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Opacity(
                                                opacity: 0.4,
                                                child: Text(
                                                    "lbl_transaction_id".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallBlack900_1)),
                                            Text("msg_234_7658_094_678".tr,
                                                style: CustomTextStyles
                                                    .bodySmallBlack900)
                                          ])),
                                  SizedBox(height: 24),
                                  // Padding(
                                  //     padding: EdgeInsets.only(right: 4),
                                  //     child: Row(
                                  //         mainAxisAlignment:
                                  //             MainAxisAlignment.spaceBetween,
                                  //         children: [
                                  //           Opacity(
                                  //               opacity: 0.4,
                                  //               child: Text("lbl_time_date".tr,
                                  //                   style: CustomTextStyles
                                  //                       .bodySmallBlack900_1)),
                                  //           Text("msg_01_03_22_11_00".tr,
                                  //               style: CustomTextStyles
                                  //                   .bodySmallBlack900)
                                  //         ])),
                                  SizedBox(height: 65),
                                  GestureDetector(
                                      onTap: () {
                                        onTapChoosePay();
                                      },
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 23, vertical: 13),
                                          decoration: AppDecoration.fillBlueGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder6),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 3),
                                                // Text(
                                                //     "msg_choose_payment_methode"
                                                //         .tr
                                                //         .toUpperCase(),
                                                //     style: theme
                                                //         .textTheme.titleSmall)
                                              ]))),
                                  SizedBox(height: 45),
                                  Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCheckmarkBlueGray300,
                                                height: 22,
                                                width: 17,
                                                margin: EdgeInsets.only(
                                                    top: 11, bottom: 21)),
                                            Expanded(
                                                child: Container(
                                                    width: 230,
                                                    margin: EdgeInsets.only(
                                                        left: 17),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text:
                                                                  "msg_all_your_transactions2"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .bodySmallff000000),
                                                          TextSpan(
                                                              text:
                                                                  "msg_terms_conditions"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeffff897e)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left)))
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 46, vertical: 45),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                      height: 134,
                                      width: 134,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 3),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 9,
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
                                                                .start,
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
                                                                      left:
                                                                          20),
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
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .teal200,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              1))),
                                                          SizedBox(height: 9),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                  height: 2
                                                                      ,
                                                                  width: 2
                                                                     ,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right: 3
                                                                              ),
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .whiteA700,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              1)))),
                                                          SizedBox(
                                                              height: 63),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                  height: 5
                                                                      ,
                                                                  width: 5
                                                                      ,
                                                                  margin: EdgeInsets.only(
                                                                      right:
                                                                          49),
                                                                  decoration: BoxDecoration(
                                                                      color: appTheme
                                                                          .indigo400,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2))))
                                                        ]))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 13),
                                                child: CustomIconButton(
                                                    height: 28,
                                                    width: 28,
                                                    padding:
                                                        EdgeInsets.all(7),
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCheckmarkWhiteA700)))
                                          ])),
                                  SizedBox(height: 37),
                                  Row(

                                    children: [
                                      SizedBox(width: 6),
                                      Text("msg_transaction_successful".tr,
                                          style: CustomTextStyles.titleLargeRoboto),
                                    ],
                                  ),
                                  SizedBox(height: 26),
                                  Opacity(
                                      opacity: 0.4,
                                      child: SizedBox(
                                          width: 230,
                                          child: Text(
                                              "msg_lorem_ipsum_dolor".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodySmallRoboto
                                                  .copyWith(height: 1.83)))),
                                  SizedBox(height: 45),
                                  CustomElevatedButton(
                                      width: 141,
                                      text: "lbl_done".tr.toUpperCase(),
                                      buttonTextStyle:
                                          CustomTextStyles.titleSmallRoboto_1,
                                      onPressed: () {
                                        onTapDone();
                                      }),
                                  SizedBox(height: 6)
                                ])))
                  ]))
            ])));
  }

  /// Common widget
  Widget _buildTopUpSection({
    required String amount,
    required String choosePay,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.4,
          child: Text(amount,
              style: CustomTextStyles.bodySmallBlack900_1
                  .copyWith(color: appTheme.black900.withOpacity(0.49)))),
      Text(choosePay,
          style: CustomTextStyles.bodySmallBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the thirtyfourScreen when the action is triggered.
  onTapChoosePay() {
    Get.toNamed(
      AppRoutes.thirtyfourScreen,
    );
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapDone() {
    Get.toNamed(
      AppRoutes.eightScreen,
    );
  }
}
