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
                width: 480,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(children: [
                          SizedBox(height: 60),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173,
                              width: 334,
                              radius: BorderRadius.circular(6)),
                          SizedBox(height: 39),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 78),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 35,
                                        width: 35,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse77)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 18, top: 8, bottom: 8),
                                        child: Text("msg_tamilnadu_cable".tr,
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                          SizedBox(height: 48),
                          _buildFrame(),
                          SizedBox(height: 32),
                          _buildHouseNo763(),
                          SizedBox(height: 32),
                          _buildMeterReading73t3(),
                          SizedBox(height: 32),
                          _buildTotalAmount(),
                          SizedBox(height: 26),
                          _buildDone()
                        ]))))));
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
            text: "Indian gas".tr, margin: EdgeInsets.only(left: 14)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrameEditText() {
    return CustomTextFormField(
        width: 172,
        controller: controller.frameEditTextController,
        hintText: "msg_service_no_09687624667".tr,
        textInputAction: TextInputAction.done,
        // borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayC,
        filled: false);
  }

  /// Section Widget
  Widget _buildNameKevin() {
    return CustomOutlinedButton(width: 147, text: "lbl_name_kevin".tr);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildFrameEditText(), _buildNameKevin()]));
  }

  /// Section Widget
  Widget _buildHouseNo() {
    return CustomOutlinedButton(width: 171, text: "lbl_house_no_763".tr);
  }

  /// Section Widget
  Widget _buildTotalUnit() {
    return CustomOutlinedButton(width: 147, text: "msg_total_unit_163".tr);
  }

  /// Section Widget
  Widget _buildHouseNo763() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildHouseNo(),
              _buildTotalUnit()]));
  }

  /// Section Widget
  Widget _buildMeterReading() {
    return CustomOutlinedButton(
        width: 187, text: "msg_meter_reading_73t3".tr);
  }

  /// Section Widget
  Widget _buildReceipt() {
    return CustomOutlinedButton(width: 147, text: "lbl_receipt_6540".tr);
  }

  /// Section Widget
  Widget _buildMeterReading73t3() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildMeterReading(),
              SizedBox(
                width: 8,
              ),
              _buildReceipt()]));
  }

  /// Section Widget
  Widget _buildTotalAmount() {
    return CustomOutlinedButton(
        width: 190,
        text: "msg_total_amount_762".tr,
        margin: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildDone() {
    return CustomElevatedButton(
        // style: CustomElevatedButtonstyleFrom(
        // ),
        width: 189,
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
