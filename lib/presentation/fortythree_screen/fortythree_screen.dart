import 'controller/fortythree_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_icon_button.dart';
import 'package:faz/widgets/custom_outlined_button.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FortythreeScreen extends GetWidget<FortythreeController> {
  const FortythreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Column(children: [
                          SizedBox(height: 60.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173.v,
                              width: 334.h,
                              radius: BorderRadius.circular(6.h)),
                          SizedBox(height: 39.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 78.h),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse77)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 18.h, top: 8.v, bottom: 8.v),
                                        child: Text("msg_tamilnadu_cable".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                          SizedBox(height: 48.v),
                          _buildFrame(),
                          SizedBox(height: 32.v),
                          _buildHouseNo763(),
                          SizedBox(height: 32.v),
                          _buildMeterReading73t3(),
                          SizedBox(height: 32.v),
                          _buildTotalAmount(),
                          SizedBox(height: 26.v),
                          _buildDone()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 22.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_indane_gas".tr, margin: EdgeInsets.only(left: 14.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrameEditText() {
    return CustomTextFormField(
        width: 172.h,
        controller: controller.frameEditTextController,
        hintText: "msg_service_no_09687624667".tr,
        textInputAction: TextInputAction.done,
        // borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayC,
        filled: false);
  }

  /// Section Widget
  Widget _buildNameKevin() {
    return CustomOutlinedButton(width: 106.h, text: "lbl_name_kevin".tr);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildFrameEditText(), _buildNameKevin()]));
  }

  /// Section Widget
  Widget _buildHouseNo() {
    return CustomOutlinedButton(width: 171.h, text: "lbl_house_no_763".tr);
  }

  /// Section Widget
  Widget _buildTotalUnit() {
    return CustomOutlinedButton(width: 106.h, text: "msg_total_unit_163".tr);
  }

  /// Section Widget
  Widget _buildHouseNo763() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildHouseNo(), _buildTotalUnit()]));
  }

  /// Section Widget
  Widget _buildMeterReading() {
    return CustomOutlinedButton(
        width: 171.h, text: "msg_meter_reading_73t3".tr);
  }

  /// Section Widget
  Widget _buildReceipt() {
    return CustomOutlinedButton(width: 106.h, text: "lbl_receipt_6540".tr);
  }

  /// Section Widget
  Widget _buildMeterReading73t3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildMeterReading(), _buildReceipt()]));
  }

  /// Section Widget
  Widget _buildTotalAmount() {
    return CustomOutlinedButton(
        width: 171.h,
        text: "msg_total_amount_762".tr,
        margin: EdgeInsets.only(left: 20.h),
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildDone() {
    return CustomElevatedButton(
        width: 189.h,
        text: "lbl_done".tr.toUpperCase(),
        onPressed: () {
          onTapDone();
        });
  }

  /// Navigates to the fortytwoScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.fortytwoScreen,
    );
  }

  /// Navigates to the fortyfiveScreen when the action is triggered.
  onTapDone() {
    Get.toNamed(
      AppRoutes.fortyfiveScreen,
    );
  }
}
