import 'controller/water359_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_outlined_button.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Water359Screen extends GetWidget<Water359Controller> {
  const Water359Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19, vertical: 14),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 39),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 59),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse77,
                                height: 35,
                                width: 35,
                                radius: BorderRadius.circular(17)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 18, top: 8, bottom: 8),
                                child: Text("msg_tamilnadu_water".tr,
                                    style: theme.textTheme.labelLarge))
                          ]))),
                  SizedBox(height: 48),
                  _buildRow(),
                  SizedBox(height: 32),
                  _buildRow1(),
                  SizedBox(height: 32),
                  _buildRow2(),
                  SizedBox(height: 32),
                  _buildTotalAmount(),
                  SizedBox(height: 26),
                  _buildDone(),
                  SizedBox(height: 5)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 25, top: 22, bottom: 22),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_indane_gas".tr, margin: EdgeInsets.only(left: 14)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Container(
            height: 173,
            width: 334,
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder6),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle1064173x334,
                  height: 173,
                  width: 334,
                  radius: BorderRadius.circular(8),
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: Container(
                          height: 173,
                          width: 330,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle1064173x334,
                                height: 173,
                                width: 330,
                                radius: BorderRadius.circular(8),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                    child: Container(
                                        height: 173,
                                        width: 330,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder6),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage7,
                                                  height: 173,
                                                  width: 330,
                                                  radius: BorderRadius.circular(
                                                      8),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage10,
                                                  height: 173,
                                                  width: 330,
                                                  radius: BorderRadius.circular(
                                                      8),
                                                  alignment: Alignment.center)
                                            ]))))
                          ]))))
            ])));
  }

  /// Section Widget
  Widget _buildEditText() {
    return CustomTextFormField(
        width: 172,
        controller: controller.editTextController,
        hintText: "msg_service_no_09687624667".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildNameKevin() {
    return CustomOutlinedButton(width: 106, text: "lbl_name_kevin".tr);
  }

  /// Section Widget
  Widget _buildRow() {
    return Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildEditText(), _buildNameKevin()]));
  }

  /// Section Widget
  Widget _buildHouseNo() {
    return CustomOutlinedButton(width: 171, text: "lbl_house_no_763".tr);
  }

  /// Section Widget
  Widget _buildTotalUnit() {
    return CustomOutlinedButton(width: 106, text: "msg_total_unit_163".tr);
  }

  /// Section Widget
  Widget _buildRow1() {
    return Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildHouseNo(), _buildTotalUnit()]));
  }

  /// Section Widget
  Widget _buildMeterReading() {
    return CustomOutlinedButton(
        width: 171, text: "msg_meter_reading_73t3".tr);
  }

  /// Section Widget
  Widget _buildReceipt() {
    return CustomOutlinedButton(width: 106, text: "lbl_receipt_6540".tr);
  }

  /// Section Widget
  Widget _buildRow2() {
    return Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildMeterReading(), _buildReceipt()]));
  }

  /// Section Widget
  Widget _buildTotalAmount() {
    return CustomOutlinedButton(
        width: 171,
        text: "msg_total_amount_762".tr,
        margin: EdgeInsets.only(left: 1),
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildDone() {
    return CustomElevatedButton(
        width: 189,
        text: "lbl_done".tr.toUpperCase(),
        onPressed: () {
          onTapDone();
        });
  }

  /// Navigates to the water258Screen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.water258Screen,
    );
  }

  /// Navigates to the amountwsixtyScreen when the action is triggered.
  onTapDone() {
    Get.toNamed(
      AppRoutes.amountwsixtyScreen,
    );
  }
}
