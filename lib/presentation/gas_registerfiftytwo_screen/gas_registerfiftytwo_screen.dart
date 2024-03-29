import 'controller/gas_registerfiftytwo_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/core/utils/validation_functions.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GasRegisterfiftytwoScreen
    extends GetWidget<GasRegisterfiftytwoController> {
  GasRegisterfiftytwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: 480,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 14),
                            child: Column(children: [
                              _buildFrameStack(),
                              SizedBox(height: 17),
                              CustomSearchView(
                                  controller: controller.searchController,
                                  hintText: "lbl_search".tr),
                              SizedBox(height: 34),
                              _buildFrameColumn(),
                              SizedBox(height: 19),
                              CustomElevatedButton(
                                  width: 189,
                                  text: "lbl_confirm".tr.toUpperCase(),
                                  onPressed: () {
                                    onTapConfirm();
                                  }),
                              SizedBox(height: 5)
                            ])))))));
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
            text: "lbl_indane_gas".tr, margin: EdgeInsets.only(left: 14)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrameStack() {
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
              CustomImageView(
                  imagePath: ImageConstant.imgImage7,
                  height: 173,
                  width: 334,
                  radius: BorderRadius.circular(8),
                  alignment: Alignment.center)
            ])));
  }

  /// Section Widget
  Widget _buildFrameColumn() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_book_using".tr,
                  style: CustomTextStyles.labelLargeDMSans),
              SizedBox(height: 10),
              CustomTextFormField(
                  controller: controller.registerBookNumberController,
                  hintText: "msg_register_book_number".tr,
                  hintStyle: CustomTextStyles.bodyMediumDMSansGray60003,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "err_msg_please_enter_valid_number".tr;
                    }
                    return null;
                  },
                  borderDecoration: TextFormFieldStyleHelper.underLineGray,
                  filled: false),
              SizedBox(height: 12),
              Text("lbl_register_number".tr,
                  style: CustomTextStyles.labelLargeDMSans),
              SizedBox(height: 10),
              CustomTextFormField(
                  controller: controller.registerBookNumberController1,
                  hintText: "msg_register_book_number".tr,
                  hintStyle: CustomTextStyles.bodyMediumDMSansGray60003,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "err_msg_please_enter_valid_number".tr;
                    }
                    return null;
                  },
                  borderDecoration: TextFormFieldStyleHelper.underLineGray,
                  filled: false),
              SizedBox(height: 30),
              SizedBox(
                  width: 297,
                  child: Text("msg_please_note_the".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallDMSansGray60003)),
              SizedBox(height: 9)
            ]));
  }

  /// Navigates to the gasHomefiftyoneScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.gasHomefiftyoneScreen,
    );
  }

  /// Navigates to the gasBillfiftythreeScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.gasBillfiftythreeScreen,
    );
  }
}
