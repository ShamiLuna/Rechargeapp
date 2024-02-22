import 'controller/fortytwo_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_drop_down.dart';
import 'package:faz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FortytwoScreen extends GetWidget<FortytwoController> {
  const FortytwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
               height: 890,
                width: 480,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(children: [
                          SizedBox(height: 30),
                          _buildTamilnaduCable(),
                          SizedBox(height: 33),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: CustomDropDown(
                                  hintText: "lbl_district".tr,
                                  items: controller.fortytwoModelObj.value
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
                                  items: controller.fortytwoModelObj.value
                                      .dropdownItemList1.value,
                                  borderDecoration:
                                      DropDownStyleHelper.outlineBlack,
                                  filled: true,
                                  fillColor: appTheme.gray900,
                                  onChanged: (value) {
                                    controller.onSelected1(value);
                                  })),
                          SizedBox(height: 27),
                          _buildDno1(),
                          SizedBox(height: 27),
                          _buildFlatno1(),
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
            text: "lbl_cable2".tr, margin: EdgeInsets.only(left: 25)),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildTamilnaduCable() {
    return SizedBox(
        height: 242,
        width: 334,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 3, right: 2),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  decoration: AppDecoration.fillGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse7735x35,
                            height: 35,
                            width: 35,
                            radius: BorderRadius.circular(17),
                            margin: EdgeInsets.only(top: 193)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 18, top: 201, bottom: 8),
                            child: Text("msg_tamilnadu_cable".tr,
                                style: theme.textTheme.labelLarge))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1064,
              height: 190,
              width: 334,
              radius: BorderRadius.circular(6),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 1,bottom: 5))
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
  Widget _buildBillno() {
    return Padding(
        padding: EdgeInsets.only(left: 12),
        child: CustomTextFormField(
            width: 130,
            controller: controller.billnoController,
            hintText: "lbl_bill_no".tr,
            hintStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildDno1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildDno(), _buildBillno()]));
  }

  /// Section Widget
  Widget _buildFlatno() {
    return CustomTextFormField(
        width: 130,
        controller: controller.flatnoController,
        hintText: "lbl_flat_no".tr,
        hintStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildSeno() {
    return Padding(
        padding: EdgeInsets.only(left: 12),
        child: CustomTextFormField(
            width: 130,
            controller: controller.senoController,
            hintText: "lbl_se_no".tr,
            hintStyle: theme.textTheme.bodyLarge!,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildFlatno1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildFlatno(), _buildSeno()]));
  }

  /// Navigates to the fortyoneScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.fortyoneScreen,
    );
  }

  /// Navigates to the fortythreeScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.fortythreeScreen,
    );
  }
}
