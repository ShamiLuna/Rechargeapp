import 'controller/thirtytwo_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ThirtytwoScreen extends GetWidget<ThirtytwoController> {
  const ThirtytwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: 400,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          navi33();
                        },
                        child: Container(
                          // width: 340,
                            // margin: EdgeInsets.only(bottom: 5),
                            // padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(children: [
                              SizedBox(height: 60),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle1064,
                                  height: 173,
                                  width: 334,
                                  radius: BorderRadius.circular(6)),
                              SizedBox(height: 30),
                              _buildPriceRow(),
                              SizedBox(height: 22),
                              _buildView3(),
                              SizedBox(height: 26),
                              // _buildConfirmColumn()
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_dth_offers".tr, margin: EdgeInsets.only(left: 9)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPriceRow() {
    return
      Container(
        margin: EdgeInsets.symmetric(horizontal: 13),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 1, top: 9, bottom: 22),
                  child: _buildView(
                      offerText: "msg_offer_23_days".tr,
                      priceText: "lbl_249".tr,
                      dataText: "lbl_data_2_gb".tr,
                      validityText: "msg_validity_28_days".tr,
                      voiceText: "msg_voice_unlimited".tr,
                      specialOfferText: "msg_special_offer".tr,
                      additionalBenefitsText: "msg_additional_benefits".tr))
            ])
          );
  }

  /// Section Widget
  Widget _buildView3() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 13),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 16, top: 9, bottom: 22),
                  child: _buildView(
                      offerText: "msg_offer_23_days".tr,
                      priceText: "lbl_249".tr,
                      dataText: "lbl_data_2_gb".tr,
                      validityText: "msg_validity_28_days".tr,
                      voiceText: "msg_voice_unlimited".tr,
                      specialOfferText: "msg_special_offer".tr,
                      additionalBenefitsText: "msg_additional_benefits".tr))
            ]));
  }

  /// Section Widget
  Widget _buildConfirmColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 93, vertical: 14),
        decoration: AppDecoration.fillBlack,
        child: CustomElevatedButton(text: "lbl_confirm".tr.toUpperCase()));
  }

  /// Common widget
  Widget _buildView({
    required String offerText,
    required String priceText,
    required String dataText,
    required String validityText,
    required String voiceText,
    required String specialOfferText,
    required String additionalBenefitsText,
  }) {
    return SizedBox(
        width: 320,
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 135,
              padding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
              child: Text(offerText,
                  style: CustomTextStyles.bodySmallDMSansWhiteA700_1
                      .copyWith(
                          color: appTheme.whiteA700.withOpacity(0.55)))),
          SizedBox(height: 8),
          SizedBox(
              width: 295,
              child: Row(children: [
                Text(priceText,
                    style: CustomTextStyles.titleSmallDMSansWhiteA700
                        .copyWith(
                            color: appTheme.whiteA700.withOpacity(0.55))),
                Spacer(),
                Text(dataText,
                    style: CustomTextStyles.titleSmallDMSansWhiteA700
                        .copyWith(
                            color: appTheme.whiteA700.withOpacity(0.55))),
                Padding(
                    padding: EdgeInsets.only(left: 23),
                    child: Text(validityText,
                        style: CustomTextStyles.titleSmallDMSansWhiteA700
                            .copyWith(
                                color:
                                    appTheme.whiteA700.withOpacity(0.55))))
              ])),
          SizedBox(height: 4),
          Padding(
              padding: EdgeInsets.only(left: 1),
              child: Text(voiceText,
                  style: CustomTextStyles.bodyMediumDMSansWhiteA700
                      .copyWith(
                          color: appTheme.whiteA700.withOpacity(0.55)))),
          SizedBox(height: 8),
          Padding(
              padding: EdgeInsets.only(left: 1),
              child: Text(specialOfferText,
                  style: CustomTextStyles.bodyMediumDMSansWhiteA700
                      .copyWith(
                          color: appTheme.whiteA700.withOpacity(0.55)))),
          SizedBox(height: 3),
          Padding(
              padding: EdgeInsets.only(left: 1),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_additional_benefits2".tr,
                        style: CustomTextStyles.labelLargeDMSans8cffffff),
                    TextSpan(
                        text: "lbl_more_details".tr,
                        style: CustomTextStyles.labelLargeDMSansffa456f6)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the thirtyoneScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.thirtyoneScreen,
    );
  }

  /// Navigates to the thirtythreeScreen when the action is triggered.
  navi33() {
    Get.offNamed(
      AppRoutes.thirtythreeScreen,
    );
  }
}
