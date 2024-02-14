import 'controller/water258_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_drop_down.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Water258Screen extends GetWidget<Water258Controller> {
  const Water258Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(23.h),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 33.v),
                  CustomDropDown(
                      hintText: "lbl_district".tr,
                      items: controller
                          .water258ModelObj.value.dropdownItemList.value,
                      borderDecoration: DropDownStyleHelper.outlineBlack,
                      filled: true,
                      fillColor: appTheme.gray900,
                      onChanged: (value) {
                        controller.onSelected(value);
                      }),
                  SizedBox(height: 24.v),
                  CustomDropDown(
                      hintText: "lbl_village".tr,
                      items: controller
                          .water258ModelObj.value.dropdownItemList1.value,
                      borderDecoration: DropDownStyleHelper.outlineBlack,
                      filled: true,
                      fillColor: appTheme.gray900,
                      onChanged: (value) {
                        controller.onSelected1(value);
                      }),
                  SizedBox(height: 27.v),
                  _buildDNO(),
                  SizedBox(height: 27.v),
                  _buildFlatNO(),
                  SizedBox(height: 34.v),
                  GestureDetector(
                      onTap: () {
                        onTapFrame();
                      },
                      child: Container(
                          height: 53.v,
                          width: 126.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35.h, vertical: 19.v),
                          decoration: AppDecoration.fillDeepPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Text("  Submit",style: TextStyle(color: Colors.white),),
                          // CustomImageView(
                          //     imagePath: ImageConstant.imgSettings,
                          //     height: 13.v,
                          //     width: 56.h,
                          //     alignment: Alignment.center)
                      )),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 25.h, top: 22.v, bottom: 22.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "lbl_billing_payment".tr,
            margin: EdgeInsets.only(left: 19.h)),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Container(
                      height: 173.v,
                      width: 329.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1064173x334,
                            height: 173.v,
                            width: 329.h,
                            radius: BorderRadius.circular(8.h),
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
                                    height: 173.v,
                                    width: 329.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage7,
                                              height: 173.v,
                                              width: 329.h,
                                              radius:
                                                  BorderRadius.circular(8.h),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage10,
                                              height: 173.v,
                                              width: 329.h,
                                              radius:
                                                  BorderRadius.circular(8.h),
                                              alignment: Alignment.center)
                                        ]))))
                      ]))),
              SizedBox(height: 27.v),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse7735x35,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        radius: BorderRadius.circular(17.h)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18.h, top: 9.v, bottom: 7.v),
                        child: Text("msg_tamilnadu_electricity".tr,
                            style: theme.textTheme.labelLarge))
                  ])),
              SizedBox(height: 7.v)
            ]));
  }

  /// Section Widget
  Widget _buildDno() {
    return CustomTextFormField(
        width: 161.h,
        controller: controller.dnoController,
        hintText: "lbl_d_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildBillNo() {
    return CustomTextFormField(
        width: 152.h,
        controller: controller.billNoController,
        hintText: "lbl_bill_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildDNO() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildDno(), _buildBillNo()]);
  }

  /// Section Widget
  Widget _buildFlatNo() {
    return CustomTextFormField(
        width: 161.h,
        controller: controller.flatNoController,
        hintText: "lbl_flat_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildSeNo() {
    return CustomTextFormField(
        width: 152.h,
        controller: controller.seNoController,
        hintText: "lbl_se_no".tr,
        hintStyle: theme.textTheme.bodyLarge!,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildFlatNO() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildFlatNo(), _buildSeNo()]);
  }

  /// Navigates to the waterHomefiftysevenScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.waterHomefiftysevenScreen,
    );
  }

  /// Navigates to the water359Screen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.water359Screen,
    );
  }
}
