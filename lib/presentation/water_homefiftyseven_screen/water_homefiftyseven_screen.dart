import 'controller/water_homefiftyseven_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class WaterHomefiftysevenScreen
    extends GetWidget<WaterHomefiftysevenController> {
  const WaterHomefiftysevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19, vertical: 14),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 17),
                  CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr),
                  SizedBox(height: 13),
                  _buildSearchFrame(),
                  SizedBox(height: 5)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(left: 8, top: 8, bottom: 8,right: 8),),
        title: AppbarTitle(
            text: "lbl_water".tr, margin: EdgeInsets.only(left: 21)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildFrame() {
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
              Align(
                  alignment: Alignment.center,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: Container(
                          height: 173,
                          width: 334,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage7,
                                height: 173,
                                width: 334,
                                radius: BorderRadius.circular(8),
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage10,
                                height: 173,
                                width: 334,
                                radius: BorderRadius.circular(8),
                                alignment: Alignment.center)
                          ]))))
            ])));
  }

  /// Section Widget
  Widget _buildSearchFrame() {
    return Container(
        width: 400,
        padding: EdgeInsets.symmetric(horizontal: 36),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
        child: GestureDetector(
          onTap: () {
            onTapDiani();
          },
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26),
                Text("msg_billers_in_tamilnadu".tr,
                    style: CustomTextStyles.titleMediumGray60004),
                SizedBox(height: 29),
                GestureDetector(
                    onTap: () {
                      onTapDiani();
                    },
                    child: Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEllipse776,
                                  height: 35,
                                  width: 35,
                                  radius: BorderRadius.circular(17)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 18, top: 6, bottom: 10),
                                  child: Text("msg_grampachayat_nevari".tr,
                                      style:
                                          CustomTextStyles.labelLargeGray60004))
                            ]))),
                SizedBox(height: 37),
                Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse776,
                              height: 35,
                              width: 35,
                              radius: BorderRadius.circular(17)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 18, top: 6, bottom: 10),
                              child: Text("msg_grampachayat_ambegan".tr,
                                  style: CustomTextStyles.labelLargeGray60004))
                        ])),
                SizedBox(height: 37),
                Padding(
                    padding: EdgeInsets.only(right: 2),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse776,
                          height: 35,
                          width: 35,
                          radius: BorderRadius.circular(17)),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 18, top: 8, bottom: 8),
                          child: Text("msg_grampachayat_hingangaon".tr,
                              style: CustomTextStyles.labelLargeGray60004))
                    ])),
                SizedBox(height: 37),
                Padding(
                    padding: EdgeInsets.only(right: 1),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse776,
                          height: 35,
                          width: 35,
                          radius: BorderRadius.circular(17)),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 18, top: 8, bottom: 8),
                          child: Text("msg_grampachayat_kheradewangi".tr,
                              style: CustomTextStyles.labelLargeGray60004))
                    ])),
                SizedBox(height: 40),
                Row(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse772,
                      height: 35,
                      width: 35,
                      radius: BorderRadius.circular(17)),
                  Padding(
                      padding: EdgeInsets.only(left: 18, top: 9, bottom: 8),
                      child: Text("msg_colors_rishtey_tv".tr,
                          style: CustomTextStyles.labelLargeBlack900))
                ])
              ]),
        ));
  }

  /// Navigates to the water258Screen when the action is triggered.
  onTapDiani() {
    Get.toNamed(
      AppRoutes.water258Screen,
    );
  }
}
