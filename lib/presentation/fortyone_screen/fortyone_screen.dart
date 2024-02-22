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
                    child: Center(
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
                            _buildMobileNumberStack(),
                            SizedBox(height: 267),
                            CustomElevatedButton(
                                width: 189,
                                text: "lbl_confirm".tr.toUpperCase(),
                                onPressed: () {
                                  navi42();
                                })
                          ])),
                    )))));
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
        title: Center(
          child: AppbarTitle(
              text: "lbl_cable".tr, margin: EdgeInsets.only(right: 90)),
        ),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildMobileNumberStack() {
    return SizedBox(
        height: 112,
        width: 334,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 59),
                  padding: EdgeInsets.all(14),
                  decoration: AppDecoration.fillGray.copyWith(
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
                  padding: EdgeInsets.fromLTRB(1, 1, 17, 1),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(height: 1),
                        Container(
                            width: 282,
                            margin: EdgeInsets.only(right: 17),
                            child: Text("msg_press_the_menu_button2".tr,
                                maxLines: 3,
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
