import 'controller/twentyfour_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class TwentyfourScreen extends GetWidget<TwentyfourController> {
  const TwentyfourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395,
                child: Column(children: [
                  SizedBox(height: 94),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 690,
                              width: 325,
                              margin: EdgeInsets.only(
                                  left: 35, right: 35, bottom: 48),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 25,
                                                      vertical: 34),
                                                  decoration: AppDecoration
                                                      .fillGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                            "lbl_payment_details"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleMedium),
                                                        SizedBox(height: 64),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 4),
                                                            child: _buildPaymentDetailsRow(
                                                                text:
                                                                    "lbl_amount"
                                                                        .tr,
                                                                shopeePay:
                                                                    "lbl_20_00"
                                                                        .tr)),
                                                        SizedBox(height: 26),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 4),
                                                            child: _buildPaymentDetailsRow(
                                                                text:
                                                                    "lbl_top_up_type"
                                                                        .tr,
                                                                shopeePay:
                                                                    "lbl_shopee_pay"
                                                                        .tr)),
                                                        SizedBox(height: 23),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Opacity(
                                                                      opacity:
                                                                          0.4,
                                                                      child: Text(
                                                                          "lbl_transaction_id"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallBlack900_1)),
                                                                  Text(
                                                                      "msg_234_7658_094_678"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallBlack900)
                                                                ])),
                                                        SizedBox(height: 24),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 1),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Opacity(
                                                                      opacity:
                                                                          0.4,
                                                                      child: Text(
                                                                          "lbl_time_date"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallBlack900_1)),
                                                                  Text(
                                                                      "msg_01_01_22_09_00"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallBlack900)
                                                                ])),
                                                        SizedBox(height: 61),
                                                        Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        42,
                                                                    vertical:
                                                                        22),
                                                            decoration:
                                                                AppDecoration
                                                                    .gradientIndigoAToTealA,
                                                            child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  SizedBox(
                                                                      height:
                                                                          3),
                                                                  Text(
                                                                      "msg_choose_payment_methode"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleSmall14_1)
                                                                ])),
                                                        SizedBox(height: 33),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 8),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                      height:
                                                                          22,
                                                                      width:
                                                                          17,
                                                                      margin: EdgeInsets.only(
                                                                          top: 11
                                                                              ,
                                                                          bottom: 21
                                                                              ),
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.imgCheckmarkTeal200,
                                                                                height: 6,
                                                                                width: 9,
                                                                                alignment: Alignment.center),
                                                                            Opacity(
                                                                                opacity: 0.5,
                                                                                child: CustomImageView(imagePath: ImageConstant.imgThumbsUp, height: 22, width: 17, alignment: Alignment.center))
                                                                          ])),
                                                                  Expanded(
                                                                      child: Container(
                                                                          width: 230,
                                                                          margin: EdgeInsets.only(left: 17),
                                                                          child: RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(text: "msg_all_your_transactions2".tr, style: CustomTextStyles.bodySmallff000000),
                                                                                TextSpan(text: "msg_terms_conditions".tr, style: CustomTextStyles.labelLargeff76d4b5)
                                                                              ]),
                                                                              textAlign: TextAlign.left)))
                                                                ])),
                                                        SizedBox(height: 29)
                                                      ])),
                                              SizedBox(height: 48),
                                              Container(
                                                  margin: EdgeInsets.only(
                                                      left: 91, right: 83),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 25,
                                                      vertical: 12),
                                                  decoration: AppDecoration
                                                      .gradientDeepPurpleToPurpleA
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(height: 4),
                                                        Text(
                                                            "lbl_send_money".tr,
                                                            style: CustomTextStyles
                                                                .titleMediumWhiteA700)
                                                      ]))
                                            ])),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(top: 229),
                                            child: Text(
                                                "msg_manual_verification".tr,
                                                style: CustomTextStyles
                                                    .titleSmall14_1))),
                                    _buildVisaRow(),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 384, bottom: 220),
                                        child: _buildMasterRow(
                                            myAccount: "lbl_my_account".tr,
                                            price: "lbl_3000_00".tr,
                                            textContent: "lbl_6873".tr,
                                            textContent1: "lbl_digital".tr,
                                            transferText:
                                                "msg_transfer_sona_bank".tr,
                                            passwordText: "lbl_32982".tr)),
                                    _buildMyAccountRow(),
                                    _buildChoosePaymentMethodRow(),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, bottom: 126),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height: 51,
                                                      width: 73,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        51,
                                                                    width: 73,
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .teal300,
                                                                        borderRadius:
                                                                            BorderRadius.circular(10)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            5,
                                                                        top:
                                                                            6,
                                                                        right: 8
                                                                            ),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          SizedBox(
                                                                              width: 60,
                                                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                Opacity(opacity: 0.8, child: Text("lbl_my_account".tr, style: CustomTextStyles.poppinsWhiteA700Regular)),
                                                                                SizedBox(
                                                                                    height: 4,
                                                                                    width: 19,
                                                                                    child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                      Align(alignment: Alignment.center, child: Container(height: 4, width: 18, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgImage1), fit: BoxFit.cover)))),
                                                                                      Align(alignment: Alignment.bottomCenter, child: Container(height: 4, width: 19, decoration: BoxDecoration(color: appTheme.whiteA700)))
                                                                                    ]))
                                                                              ])),
                                                                          SizedBox(
                                                                              height: 1),
                                                                          Text(
                                                                              "lbl_2500_00".tr,
                                                                              style: CustomTextStyles.poppinsWhiteA700SemiBold),
                                                                          SizedBox(
                                                                              height: 8),
                                                                          _buildSixThousandEightHundredSeventy(
                                                                              dynamicText1: "lbl_9672".tr,
                                                                              dynamicText2: "lbl_digital".tr)
                                                                        ])))
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16,
                                                          top: 4,
                                                          bottom: 8),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "msg_transfer_getek_bank"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleSmall14_1),
                                                            Opacity(
                                                                opacity: 0.4,
                                                                child: Text(
                                                                    "lbl_32982"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .bodySmall_1))
                                                          ]))
                                                ]))),
                                    _buildMasterRow2()
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildVisaRow() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 274, bottom: 330),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
            decoration: AppDecoration.outlineWhiteA700
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.only(top: 3),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  decoration: AppDecoration.fillOrangeA
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 60,
                            margin: EdgeInsets.only(right: 2),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Opacity(
                                      opacity: 0.8,
                                      child: Text("lbl_my_account".tr,
                                          style: CustomTextStyles
                                              .poppinsWhiteA700Regular)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgImage2,
                                      height: 5,
                                      width: 13)
                                ])),
                        SizedBox(height: 1),
                        Text("lbl_3500_00".tr,
                            style: CustomTextStyles.poppinsWhiteA700SemiBold),
                        SizedBox(height: 8),
                        Padding(
                            padding: EdgeInsets.only(right: 2),
                            child: _buildSixThousandEightHundredSeventy(
                                dynamicText1: "lbl_3298".tr,
                                dynamicText2: "lbl_digital".tr)),
                        SizedBox(height: 3)
                      ])),
              Padding(
                  padding: EdgeInsets.only(left: 16, top: 7, bottom: 7),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_transfer_visa".tr,
                            style: CustomTextStyles.titleSmall14_1),
                        Opacity(
                            opacity: 0.4,
                            child: Text("lbl_32982".tr,
                                style: CustomTextStyles.bodySmall_1))
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildMyAccountRow() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(top: 60),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: appTheme.whiteA700, width: 1),
                borderRadius: BorderRadiusStyle.roundedBorder14),
            child: Container(
                height: 86,
                width: 325,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                decoration: AppDecoration.outlineWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
                child: Stack(alignment: Alignment.centerRight, children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: _buildFiftyFour(
                          myAccount: "lbl_my_account".tr,
                          price: "lbl_1000_00".tr,
                          textContent: "lbl_6598".tr,
                          textContent1: "lbl_digital".tr)),
                  Padding(
                      padding: EdgeInsets.fromLTRB(89, 7, 69, 9),
                      child: _buildTransferAteulBankColumn(
                          transferText: "msg_transfer_ateul_bank".tr,
                          passwordText: "lbl_32982".tr)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: 3, right: 222),
                          padding: EdgeInsets.symmetric(
                              horizontal: 5, vertical: 6),
                          decoration: AppDecoration.fillBlueA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 60,
                                    margin: EdgeInsets.only(right: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                        "lbl_my_account".tr,
                                                        style: CustomTextStyles
                                                            .poppinsWhiteA700Regular)),
                                                SizedBox(height: 1),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        "lbl_1000_00".tr,
                                                        style: CustomTextStyles
                                                            .poppinsWhiteA700SemiBold))
                                              ]),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgGrid,
                                              height: 11,
                                              width: 12,
                                              margin:
                                                  EdgeInsets.only(bottom: 5))
                                        ])),
                                SizedBox(height: 8),
                                Container(
                                    width: 60,
                                    margin: EdgeInsets.only(right: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              child: Text("lbl_6598".tr,
                                                  style: CustomTextStyles
                                                      .poppinsWhiteA700)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 5),
                                              child: Text("lbl_digital".tr,
                                                  style: CustomTextStyles
                                                      .poppinsWhiteA700Medium))
                                        ])),
                                SizedBox(height: 3)
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildChoosePaymentMethodRow() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 144, bottom: 521),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("msg_choose_payment_methode".tr,
                      style: CustomTextStyles.titleMediumWhiteA700Medium_1),
                  CustomImageView(
                      imagePath: ImageConstant.imgCloseWhiteA700,
                      height: 10,
                      width: 10,
                      margin: EdgeInsets.only(top: 6, bottom: 7),
                      onTap: () {
                        onTapImgClose();
                      })
                ])));
  }

  /// Section Widget
  Widget _buildMasterRow2() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: GestureDetector(
            onTap: () {
              navito25();
            },
            child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 200),
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                decoration: AppDecoration.outlineWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.only(top: 3),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                      decoration: AppDecoration.fillPurpleA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 60,
                                margin: EdgeInsets.only(right: 3),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Opacity(
                                                opacity: 0.8,
                                                child: Text("lbl_my_account".tr,
                                                    style: CustomTextStyles
                                                        .poppinsWhiteA700Regular)),
                                            SizedBox(height: 1),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("lbl_3000_00".tr,
                                                    style: CustomTextStyles
                                                        .poppinsWhiteA700SemiBold))
                                          ]),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserWhiteA700,
                                          height: 9,
                                          width: 15,
                                          margin: EdgeInsets.only(bottom: 7))
                                    ])),
                            SizedBox(height: 8),
                            Container(
                                width: 60,
                                margin: EdgeInsets.only(right: 3),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 4),
                                          child: Text("lbl_6873".tr,
                                              style: CustomTextStyles
                                                  .poppinsWhiteA700)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 4),
                                          child: Text("lbl_digital".tr,
                                              style: CustomTextStyles
                                                  .poppinsWhiteA700Medium))
                                    ])),
                            SizedBox(height: 4)
                          ])),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 16, top: 7, bottom: 7),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_transfer_sona_bank".tr,
                                style: CustomTextStyles.titleSmall14_1),
                            Opacity(
                                opacity: 0.4,
                                child: Text("lbl_32982".tr,
                                    style: CustomTextStyles.bodySmall_1))
                          ]))
                ]))));
  }

  /// Common widget
  Widget _buildPaymentDetailsRow({
    required String text,
    required String shopeePay,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.4,
          child: Text(text,
              style: CustomTextStyles.bodySmallBlack900_1
                  .copyWith(color: appTheme.black900.withOpacity(0.49)))),
      Text(shopeePay,
          style: CustomTextStyles.bodySmallBlack900
              .copyWith(color: appTheme.black900))
    ]);
  }

  /// Common widget
  Widget _buildSixThousandEightHundredSeventy({
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return SizedBox(
        width: 60,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Text(dynamicText1,
                  style: CustomTextStyles.poppinsWhiteA700
                      .copyWith(color: appTheme.whiteA700))),
          Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(dynamicText2,
                  style: CustomTextStyles.poppinsWhiteA700Medium
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Common widget
  Widget _buildTransferAteulBankColumn({
    required String transferText,
    required String passwordText,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(transferText,
          style: CustomTextStyles.titleSmall14_1
              .copyWith(color: appTheme.whiteA700)),
      Opacity(
          opacity: 0.4,
          child: Text(passwordText,
              style: CustomTextStyles.bodySmall_1
                  .copyWith(color: appTheme.whiteA700.withOpacity(0.49))))
    ]);
  }

  /// Common widget
  Widget _buildFiftyFour({
    required String myAccount,
    required String price,
    required String textContent,
    required String textContent1,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        decoration: AppDecoration.fillBlueA
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 60,
                  margin: EdgeInsets.only(right: 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.8,
                                  child: Text(myAccount,
                                      style: CustomTextStyles
                                          .poppinsWhiteA700Regular
                                          .copyWith(
                                              color: appTheme.whiteA700
                                                  .withOpacity(0.64)))),
                              SizedBox(height: 1),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(price,
                                      style: CustomTextStyles
                                          .poppinsWhiteA700SemiBold
                                          .copyWith(color: appTheme.whiteA700)))
                            ]),
                        CustomImageView(
                            imagePath: ImageConstant.imgGrid,
                            height: 11,
                            width: 12,
                            margin: EdgeInsets.only(bottom: 5))
                      ])),
              SizedBox(height: 8),
              Container(
                  width: 60,
                  margin: EdgeInsets.only(right: 3),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(textContent,
                                style: CustomTextStyles.poppinsWhiteA700
                                    .copyWith(color: appTheme.whiteA700))),
                        Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(textContent1,
                                style: CustomTextStyles.poppinsWhiteA700Medium
                                    .copyWith(color: appTheme.whiteA700)))
                      ])),
              SizedBox(height: 3)
            ]));
  }

  /// Common widget
  Widget _buildMasterRow({
    required String myAccount,
    required String price,
    required String textContent,
    required String textContent1,
    required String transferText,
    required String passwordText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
        decoration: AppDecoration.outlineWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Row(children: [
          Container(
              margin: EdgeInsets.only(top: 3),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
              decoration: AppDecoration.fillPurpleA
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 60,
                        margin: EdgeInsets.only(right: 3),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text(myAccount,
                                            style: CustomTextStyles
                                                .poppinsWhiteA700Regular
                                                .copyWith(
                                                    color: appTheme.whiteA700
                                                        .withOpacity(0.64)))),
                                    SizedBox(height: 1),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text(price,
                                            style: CustomTextStyles
                                                .poppinsWhiteA700SemiBold
                                                .copyWith(
                                                    color: appTheme.whiteA700)))
                                  ]),
                              CustomImageView(
                                  imagePath: ImageConstant.imgUserWhiteA700,
                                  height: 9,
                                  width: 15,
                                  margin: EdgeInsets.only(bottom: 7))
                            ])),
                    SizedBox(height: 8),
                    Container(
                        width: 60,
                        margin: EdgeInsets.only(right: 3),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 4),
                                  child: Text(textContent,
                                      style: CustomTextStyles.poppinsWhiteA700
                                          .copyWith(
                                              color: appTheme.whiteA700))),
                              Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: Text(textContent1,
                                      style: CustomTextStyles
                                          .poppinsWhiteA700Medium
                                          .copyWith(color: appTheme.whiteA700)))
                            ])),
                    SizedBox(height: 4)
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 16, top: 7, bottom: 7),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(transferText,
                        style: CustomTextStyles.titleSmall14_1
                            .copyWith(color: appTheme.whiteA700)),
                    Opacity(
                        opacity: 0.4,
                        child: Text(passwordText,
                            style: CustomTextStyles.bodySmall_1.copyWith(
                                color: appTheme.whiteA700.withOpacity(0.49))))
                  ]))
        ]));
  }

  /// Navigates to the twentyfiveScreen when the action is triggered.
  onTapImgClose() {
    Get.toNamed(
      AppRoutes.twentyfiveScreen,
    );
  }

  /// Navigates to the twentyfiveScreen when the action is triggered.
  navito25() {
    Get.offNamed(
      AppRoutes.twentyfiveScreen,
    );
  }
}
