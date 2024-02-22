import 'controller/twentytwo_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_drop_down.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TwentytwoScreen extends GetWidget<TwentytwoController> {
  const TwentytwoScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 69),
                          _buildFrame(),
                          SizedBox(height: 33),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: CustomDropDown(
                                  hintText: "lbl_district".tr,
                                  items: controller.twentytwoModelObj.value
                                      .dropdownItemList.value,
                                  borderDecoration:
                                      DropDownStyleHelper.outlineBlack,
                                  filled: true,
                                  fillColor: appTheme.gray900,
                                  onChanged: (value) {
                                    controller.onSelected(value);
                                  })),
                          SizedBox(height: 24),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: CustomDropDown(
                                  hintText: "lbl_village".tr,
                                  items: controller.twentytwoModelObj.value
                                      .dropdownItemList1.value,
                                  borderDecoration:
                                      DropDownStyleHelper.outlineBlack,
                                  filled: true,
                                  fillColor: appTheme.gray900,
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  })),
                          SizedBox(height: 27),
                          _buildDNO(),
                          SizedBox(height: 27),
                          _buildFlatNO(),
                          SizedBox(height: 34),
                          GestureDetector(
                              onTap: () {
                                onTapFrame();
                              },
                              child: Container(
                                  height: 53,
                                  width: 126,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35, vertical: 19),
                                  decoration: AppDecoration.fillDeepPurpleA
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder6),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgSettings,
                                      height: 13,
                                      width: 56,
                                      alignment: Alignment.center)))
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
            text: "lbl_billing_payment".tr,
            margin: EdgeInsets.only(left: 19)),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 23),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 191,
                  width: 329),
              SizedBox(height: 8),
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
              SizedBox(height: 8)
            ]));
  }

  /// Section Widget
  Widget _buildDno() {
    return CustomTextFormField(
        width: 130,
        controller: controller.dnoController,
        hintText: "lbl_d_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildBillNo() {
    return Padding(
        padding: EdgeInsets.only(left: 12),
        child: CustomTextFormField(
            width: 130,
            controller: controller.billNoController,
            hintText: "lbl_bill_no".tr,
            hintStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildDNO() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDno(), _buildBillNo()]));
  }

  /// Section Widget
  Widget _buildFlatNo() {
    return CustomTextFormField(
        width: 130,
        controller: controller.flatNoController,
        hintText: "lbl_flat_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildSeNo() {
    return Padding(
        padding: EdgeInsets.only(left: 12),
        child: CustomTextFormField(
            width: 130,
            controller: controller.seNoController,
            hintText: "lbl_se_no".tr,
            hintStyle: theme.textTheme.bodyLarge!,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildFlatNO() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildFlatNo(), _buildSeNo()]));
  }

  /// Navigates to the electricOneScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.electricOneScreen,
    );
  }

  /// Navigates to the electricThreeScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.electricThreeScreen,
    );
  }
}
