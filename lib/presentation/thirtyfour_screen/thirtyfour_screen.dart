import '../thirtyfour_screen/widgets/userprofile3_item_widget.dart';
import 'controller/thirtyfour_controller.dart';
import 'models/userprofile3_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class ThirtyfourScreen extends GetWidget<ThirtyfourController> {
  const ThirtyfourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 415,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 20),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 1000,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, bottom: 20),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
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
                                                            SizedBox(
                                                                height: 64),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 4
                                                                            ),
                                                                child: _buildPaymentMethodRow(
                                                                    text:
                                                                        "lbl_amount"
                                                                            .tr,
                                                                    shopeePay:
                                                                        "lbl_20_00"
                                                                            .tr)),
                                                            SizedBox(
                                                                height: 26),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 4
                                                                            ),
                                                                child: _buildPaymentMethodRow(
                                                                    text:
                                                                        "lbl_top_up_type"
                                                                            .tr,
                                                                    shopeePay:
                                                                        "lbl_shopee_pay"
                                                                            .tr)),
                                                            SizedBox(
                                                                height: 23),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 1
                                                                            ),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Opacity(
                                                                          opacity:
                                                                              0.4,
                                                                          child: Text(
                                                                              "lbl_transaction_id".tr,
                                                                              style: CustomTextStyles.bodySmallBlack900_1)),
                                                                      Text(
                                                                          "msg_234_7658_094_678"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallBlack900)
                                                                    ])),
                                                            SizedBox(
                                                                height: 24),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 1
                                                                            ),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Opacity(
                                                                          opacity:
                                                                              0.4,
                                                                          child: Text(
                                                                              "lbl_time_date".tr,
                                                                              style: CustomTextStyles.bodySmallBlack900_1)),
                                                                      Text(
                                                                          "msg_01_01_22_09_00"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallBlack900)
                                                                    ])),
                                                            SizedBox(
                                                                height: 61),
                                                            Container(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 42
                                                                           ,
                                                                        vertical: 22
                                                                            ),
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
                                                                          style:
                                                                              CustomTextStyles.titleSmall14_1)
                                                                    ])),
                                                            SizedBox(
                                                                height: 33),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 8
                                                                            ),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                          height: 22
                                                                              ,
                                                                          width: 17
                                                                              ,
                                                                          margin: EdgeInsets.only(
                                                                              top: 11,
                                                                              bottom: 21),
                                                                          child: Stack(alignment: Alignment.center, children: [
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
                                                            SizedBox(
                                                                height: 29)
                                                          ])),
                                                  SizedBox(height: 48),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 91,
                                                          right: 83),
                                                      padding:
                                                          EdgeInsets.symmetric(
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
                                                            SizedBox(
                                                                height: 4),
                                                            Text(
                                                                "lbl_send_money"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMediumWhiteA700)
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25,
                                                vertical: 34),
                                            decoration: AppDecoration.fillGray
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL32),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                            "msg_choose_payment_methode"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .titleMediumWhiteA700Medium_1),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCloseWhiteA700,
                                                            height:
                                                                10,
                                                            width: 10,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 6,
                                                                    bottom:
                                                                        7),
                                                            onTap: () {
                                                              onTapImgClose();
                                                            })
                                                      ]),
                                                  SizedBox(height: 60),
                                                  Text(
                                                      "msg_manual_verification"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleSmall14_1),
                                                  SizedBox(height: 23),
                                                  _buildUserProfile(),
                                                  SizedBox(height: 3)
                                                ])))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24);
        },
        itemCount: controller
            .thirtyfourModelObj.value.userprofile3ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile3ItemModel model = controller
              .thirtyfourModelObj.value.userprofile3ItemList.value[index];
          return Userprofile3ItemWidget(model, onTapUserProfile: () {
            onTapUserProfile();
          });
        }));
  }

  /// Common widget
  Widget _buildPaymentMethodRow({
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

  /// Navigates to the thirtyfiveScreen when the action is triggered.
  onTapUserProfile() {
    Get.toNamed(AppRoutes.thirtyfiveScreen);
  }

  /// Navigates to the thirtyfiveScreen when the action is triggered.
  onTapImgClose() {
    Get.toNamed(
      AppRoutes.thirtyfiveScreen,
    );
  }
}
