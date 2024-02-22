import 'controller/electric_three_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_outlined_button.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ElectricThreeScreen extends GetWidget<ElectricThreeController> {
  const ElectricThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 34),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup33697,
                      height: 195,
                      width: 191),
                  SizedBox(height: 5),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 19, vertical: 17),
                      decoration: AppDecoration.fillBlack,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse7735x35,
                                      height: 35,
                                      width: 35,
                                      radius: BorderRadius.circular(17)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 18, top: 9, bottom: 7),
                                      child: Text(
                                          "msg_tamilnadu_electricity".tr,
                                          style: theme.textTheme.labelLarge))
                                ]),
                            SizedBox(height: 28),
                            _buildFrame1(),
                            SizedBox(height: 32),
                            _buildHouseNo1(),
                            SizedBox(height: 32),
                            _buildMeterReading73t3(),
                            SizedBox(height: 32),
                            _buildTotalAmount(),
                            SizedBox(height: 26),
                            _buildDone()
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_billing_detail".tr, margin: EdgeInsets.only(left: 27)),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildFrame() {
    return CustomTextFormField(
        width: 172,
        controller: controller.frameController,
        hintText: "msg_service_no_09687624667".tr,
        // borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayC,
        filled: false);
  }

  /// Section Widget
  Widget _buildNameKevin() {
    return CustomOutlinedButton(width: 160, text: "lbl_name_kevin".tr);
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildFrame(),
              SizedBox(
                width: 1,
              ),
              _buildNameKevin()]));
  }

  /// Section Widget
  Widget _buildHouseNo() {
    return CustomTextFormField(
        width: 171,
        controller: controller.houseNoController,
        hintText: "lbl_house_no_763".tr,
        textInputAction: TextInputAction.done,
        // borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayC,
        filled: false);
  }

  /// Section Widget
  Widget _buildTotalUnit() {
    return CustomOutlinedButton(width: 160, text: "msg_total_unit_163".tr);
  }

  /// Section Widget
  Widget _buildHouseNo1() {
    return Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildHouseNo(),
              SizedBox(
                width: 10,
              ),
              _buildTotalUnit()]));
  }

  /// Section Widget
  Widget _buildMeterReading() {
    return CustomOutlinedButton(
        width: 190, text: "msg_meter_reading_73t3".tr);
  }

  /// Section Widget
  Widget _buildReceipt() {
    return CustomOutlinedButton(width: 160, text: "lbl_receipt_6540".tr);
  }

  /// Section Widget
  Widget _buildMeterReading73t3() {
    return Padding(
        padding: EdgeInsets.only(left: 1),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildMeterReading(), _buildReceipt()]));
  }

  /// Section Widget
  Widget _buildTotalAmount() {
    return CustomOutlinedButton(
        width: 190,
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

  /// Navigates to the twentytwoScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.twentytwoScreen,
    );
  }

  /// Navigates to the twentythreeScreen when the action is triggered.
  onTapDone() {
    Get.toNamed(
      AppRoutes.twentythreeScreen,
    );
  }
}
