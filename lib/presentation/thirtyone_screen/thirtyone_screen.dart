import 'controller/thirtyone_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ThirtyoneScreen extends GetWidget<ThirtyoneController> {
  ThirtyoneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
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
                          SizedBox(height: 17),
                          _buildDthMobileNumber(),
                          SizedBox(height: 267),
                          CustomElevatedButton(
                              width: 189,
                              text: "lbl_confirm".tr.toUpperCase(),
                              onPressed: () {
                                onTapConfirm();
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 35, top: 22, bottom: 22),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_dth_offers".tr, margin: EdgeInsets.only(left: 9)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildDthMobileNumber() {
    return SizedBox(
        height: 112,
        width: 334,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 59),
                  padding: EdgeInsets.all(14),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 24,
                        width: 24,
                        margin: EdgeInsets.only(bottom: 1)),
                    Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 3),
                        child: Text("lbl_search".tr,
                            style: CustomTextStyles.titleMediumDMSansGray60003))
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.fromLTRB(17, 1, 17, 15),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2),
                        CustomTextFormField(
                            controller: controller.mobileNumberController,
                            hintText: "msg_subscribe_id_registered".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.phone,
                            validator: (value) {
                              if (!isValidPhone(value)) {
                                return "err_msg_please_enter_valid_phone_number"
                                    .tr;
                              }
                              return null;
                            },
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineGray,
                            filled: false),
                        SizedBox(height: 12),
                        Container(
                            width: 296,
                            margin: EdgeInsets.only(right: 3),
                            child: Text("msg_press_the_menu_button".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodySmallDMSansGray60003))
                      ])))
        ]));
  }

  /// Navigates to the thirtyScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.thirtyScreen,
    );
  }

  /// Navigates to the thirtytwoScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.thirtytwoScreen,
    );
  }
}
