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
                padding: EdgeInsets.all(23),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 33),
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
                  SizedBox(height: 24),
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
                  SizedBox(height: 27),
                  _buildDNO(),
                  SizedBox(height: 27),
                  _buildFlatNO(),
                  SizedBox(height: 34),
                  GestureDetector(
                      onTap: () {
                        onTapFrame();
                      },
                      child:
                      Container(
                          height: 60,
                          width: 140,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 19),
                          decoration: AppDecoration.fillDeepPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Text("  Submit",style: TextStyle(color: Colors.white),),
                          // CustomImageView(
                          //     imagePath: ImageConstant.imgSettings,
                          //     height: 13.v,
                          //     width: 56.h,
                          //     alignment: Alignment.center)
                      )),
                  SizedBox(height: 5)
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
            text: "lbl_billing_payment".tr,
            margin: EdgeInsets.only(left: 19)),
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
                      height: 173,
                      width: 329,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1064173x334,
                            height: 173,
                            width: 329,
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
                                    width: 329,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage7,
                                              height: 173,
                                              width: 329,
                                              radius:
                                                  BorderRadius.circular(8),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage10,
                                              height: 173,
                                              width: 329,
                                              radius:
                                                  BorderRadius.circular(8),
                                              alignment: Alignment.center)
                                        ]))))
                      ]))),
              SizedBox(height: 27),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse7735x35,
                        height: 35,
                        width: 35,
                        radius: BorderRadius.circular(17)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 18, top: 9, bottom: 7),
                        child: Text("msg_tamilnadu_electricity".tr,
                            style: theme.textTheme.labelLarge))
                  ])),
              SizedBox(height: 7)
            ]));
  }

  /// Section Widget
  Widget _buildDno() {
    return CustomTextFormField(
        width: 161,
        controller: controller.dnoController,
        hintText: "lbl_d_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildBillNo() {
    return CustomTextFormField(
        width: 152,
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
        width: 161,
        controller: controller.flatNoController,
        hintText: "lbl_flat_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildSeNo() {
    return CustomTextFormField(
        width: 152,
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
