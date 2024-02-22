import 'controller/fortyfive_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FortyfiveScreen extends GetWidget<FortyfiveController> {
  const FortyfiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: 480,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(children: [
                          SizedBox(height: 15),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle1064,
                              height: 173,
                              width: 334,
                              radius: BorderRadius.circular(6)),
                          SizedBox(height: 46),
                          _buildEnter(),
                          SizedBox(height: 66),
                          Padding(
                              padding: EdgeInsets.only(left: 55, right: 50),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_1".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_22".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_32".tr,
                                        style: theme.textTheme.titleLarge)
                                  ])),
                          SizedBox(height: 27),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 51),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_4".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_5".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_6".tr,
                                        style: theme.textTheme.titleLarge)
                                  ])),
                          SizedBox(height: 27),
                          Padding(
                              padding: EdgeInsets.only(left: 53, right: 50),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("lbl_7".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_8".tr,
                                        style: theme.textTheme.titleLarge),
                                    Text("lbl_9".tr,
                                        style: theme.textTheme.titleLarge)
                                  ])),
                          SizedBox(height: 27),
                          Padding(
                              padding: EdgeInsets.only(left: 55, right: 44),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 6),
                                        child: Text("lbl4".tr,
                                            style: theme.textTheme.titleLarge)),
                                    Spacer(flex: 52),
                                    Padding(
                                        padding: EdgeInsets.only(top: 6),
                                        child: Text("lbl_0".tr,
                                            style: theme.textTheme.titleLarge)),
                                    Spacer(flex: 47),
                                    Padding(
                                        padding: EdgeInsets.only(top: 6),
                                        child: Text("lbl5".tr,
                                            style: theme.textTheme.titleLarge))
                                  ])),
                                SizedBox(
                                  height: 40,
                                ),
                                _buildBuy(),
                          SizedBox(
                            height: 40,
                          ),
                        ])))),
            // bottomNavigationBar: _buildBuy()
    ));
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
            text: "msg_select_recharge".tr,
            margin: EdgeInsets.only(left: 10)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEnter() {
    return Container(
        width: 325,
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.symmetric(horizontal: 19, vertical: 13),
        decoration: AppDecoration.outlineWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: Text("lbl_enter_amount".tr,
                      style: CustomTextStyles.bodySmallWhiteA700)),
              SizedBox(height: 6),
              Row(children: [
                Text("lbl_150".tr, style: CustomTextStyles.titleLargeSemiBold),
                Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: SizedBox(
                        height: 29,
                        child: VerticalDivider(
                            width: 1,
                            thickness: 1,
                            color: theme.colorScheme.primary,
                            indent: 2,
                            endIndent: 2)))
              ]),
              SizedBox(height: 2)
            ]));
  }

  /// Section Widget
  Widget _buildBuy() {
    return CustomElevatedButton(
        width: 189,
        text: "lbl_buy".tr.toUpperCase(),
        margin: EdgeInsets.only(left: 103, right: 103, bottom: 37),
        onPressed: () {
          onTapBuy();
        });
  }

  /// Navigates to the fortythreeScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.fortythreeScreen,
    );
  }

  /// Navigates to the manualVerificationgScreen when the action is triggered.
  onTapBuy() {
    Get.toNamed(
      AppRoutes.manualVerificationgScreen,
    );
  }
}
