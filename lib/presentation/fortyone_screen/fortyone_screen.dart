import 'controller/fortyone_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FortyoneScreen extends GetWidget<FortyoneController> {
  FortyoneScreen({Key? key}) : super(key: key);

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
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Column(children: [
                          SizedBox(height: 60.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173.v,
                              width: 334.h,
                              radius: BorderRadius.circular(6.h)),
                          SizedBox(height: 17.v),
                          _buildMobileNumberStack(),
                          SizedBox(height: 267.v),
                          CustomElevatedButton(
                              width: 189.h,
                              text: "lbl_confirm".tr.toUpperCase(),
                              onPressed: () {
                                navi42();
                              })
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
            text: "lbl_cable".tr, margin: EdgeInsets.only(left: 16.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMobileNumberStack() {
    return SizedBox(
        height: 112.v,
        width: 334.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 59.v),
                  padding: EdgeInsets.all(14.h),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
                        child: Text("lbl_search".tr,
                            style: CustomTextStyles.titleMediumDMSansGray60003))
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.fromLTRB(17.h, 1.v, 17.h, 15.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
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
                        SizedBox(height: 12.v),
                        Container(
                            width: 282.h,
                            margin: EdgeInsets.only(right: 17.h),
                            child: Text("msg_press_the_menu_button2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    CustomTextStyles.bodySmallDMSansGray60003))
                      ])))
        ]));
  }

  /// Navigates to the fortyScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.fortyScreen,
    );
  }

  /// Navigates to the fortytwoScreen when the action is triggered.
  navi42() {
    Get.offNamed(
      AppRoutes.fortytwoScreen,
    );
  }
}
