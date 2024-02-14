import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/eleven_tab_container_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/eleven_page/eleven_page.dart';
import 'package:faz/widgets/custom_drop_down.dart';
import 'package:faz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ElevenTabContainerScreen extends GetWidget<ElevenTabContainerController> {
  const ElevenTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: 395.h,
                child: Column(children: [
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10.v),
                              padding: EdgeInsets.symmetric(horizontal: 10.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Container(
                                    //     height: 15.v,
                                    //     width: double.maxFinite,
                                    //     decoration: BoxDecoration(
                                    //         color: appTheme.deepPurpleA200)),
                                    SizedBox(height: 5.v),
                                    // Padding(
                                    //     padding: EdgeInsets.only(left: 25.h),
                                    //     child: _buildBack(
                                    //         selectRecharge:
                                    //             "msg_select_recharge".tr,
                                    //         onTapBack: () {
                                    //           onTapBack();
                                    //         })),
                                    SizedBox(height: 19.v),
                                    _buildStackView(),
                                    SizedBox(height: 14.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 79.h),
                                        child: _buildKavinNagaraj(
                                            kavinNagaraj:
                                                "lbl_kavin_nagaraj".tr)),
                                    SizedBox(height: 6.v),
                                    Text("lbl_9995679824".tr,
                                        style: CustomTextStyles
                                            .bodySmallTitilliumWebWhiteA700),
                                    SizedBox(height: 6.v),
                                    Divider(
                                        color: appTheme.gray500,
                                        endIndent: 41.h),
                                    SizedBox(height: 6.v),
                                    _buildRechargeOptions(),
                                    SizedBox(height: 7.v),
                                    Divider(color: appTheme.gray500),
                                    SizedBox(height: 19.v),
                                    Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.h),
                                        child: CustomSearchView(
                                            controller:
                                                controller.searchController1,
                                            hintText: "lbl_search".tr)),
                                    SizedBox(height: 23.v),
                                    _buildRechargeFrame()
                                  ])))),

                ]))));
  }
  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 77.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack,
            margin: EdgeInsets.only(left: 45.h, top: 22.v, bottom: 22.v),
            onTap: () {
              onTapBack();
            }),
        title: AppbarTitle(
            text: "msg_select_recharge".tr,
            margin: EdgeInsets.only(left: 10.h)),
        styleType: Style.bgFill);
  }
  /// Section Widget
  Widget _buildStackView() {
    return SizedBox(
        height: 173.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 46.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 41.v),
                  decoration: BoxDecoration(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1064,
              height: 173.v,
              width: 337.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildRechargeOptions() {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomDropDown(
              width: 91.h,
              hintText: "lbl_jio_prepaid".tr,
              hintStyle: CustomTextStyles.bodySmallTitilliumWebGray60001,
              items: controller
                  .elevenTabContainerModelObj.value.dropdownItemList.value,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 11.h, vertical: 4.v),
              onChanged: (value) {
                controller.onSelected(value);
              }),
          CustomDropDown(
              width: 91.h,
              hintText: "lbl_locality".tr,
              items: controller
                  .elevenTabContainerModelObj.value.dropdownItemList1.value,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17.h, vertical: 4.v),
              onChanged: (value) {
                controller.onSelected1(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildRechargeFrame() {
    return GestureDetector(
        onTap: () {
          navi12();
        },
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 27.v,
              width: 355.h,
              margin: EdgeInsets.only(left: 4.h),
              child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.whiteA700,
                  labelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700),
                  unselectedLabelColor: appTheme.whiteA700,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(child: Text("lbl_popular".tr)),
                    Tab(child: Text("lbl_smart_phone".tr)),
                    Tab(child: Text("lbl_data_add_on".tr))
                  ])),
          SizedBox(
              height: 294.v,
              child: TabBarView(
                  controller: controller.tabviewController,
                  children: [ElevenPage(), ElevenPage(), ElevenPage()]))
        ]));
  }

  /// Section Widget
  Widget _buildStackView1() {
    return SizedBox(
        height: 173.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 46.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 41.v),
                  decoration: BoxDecoration(color: appTheme.black900))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1064,
              height: 173.v,
              width: 337.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildRechargeOptions1() {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomDropDown(
              width: 91.h,
              hintText: "lbl_jio_prepaid".tr,
              hintStyle: CustomTextStyles.bodySmallTitilliumWebGray60001,
              items: controller
                  .elevenTabContainerModelObj.value.dropdownItemList2.value,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 11.h, vertical: 4.v),
              onChanged: (value) {
                controller.onSelected2(value);
              }),
          CustomDropDown(
              width: 91.h,
              hintText: "lbl_locality".tr,
              items: controller
                  .elevenTabContainerModelObj.value.dropdownItemList3.value,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 17.h, vertical: 4.v),
              onChanged: (value) {
                controller.onSelected3(value);
              })
        ]));
  }

  /// Section Widget
  Widget _buildRechargeFrame1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          height: 27.v,
          width: 355.h,
          margin: EdgeInsets.only(left: 4.h),
          child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.whiteA700,
              labelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700),
              unselectedLabelColor: appTheme.whiteA700,
              unselectedLabelStyle: TextStyle(
                  fontSize: 16.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400),
              indicatorColor: theme.colorScheme.primary,
              tabs: [
                Tab(child: Text("lbl_popular".tr)),
                Tab(child: Text("lbl_smart_phone".tr)),
                Tab(child: Text("lbl_data_add_on".tr))
              ])),
      SizedBox(
          height: 294.v,
          child: TabBarView(
              controller: controller.tabviewController,
              children: [ElevenPage(), ElevenPage(), ElevenPage()]))
    ]);
  }

  /// Common widget
  Widget _buildBack({
    required String selectRecharge,
    Function? onTapBack,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgBack,
          height: 2.v,
          width: 32.h,
          margin: EdgeInsets.only(top: 16.v, bottom: 15.v),
          onTap: () {
            onTapBack!.call();
          }),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(selectRecharge,
              style: CustomTextStyles.titleLargeTitilliumWeb
                  .copyWith(color: appTheme.whiteA700)))
    ]);
  }

  /// Common widget
  Widget _buildKavinNagaraj({required String kavinNagaraj}) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1070,
              height: 36.v,
              width: 37.h,
              radius: BorderRadius.circular(5.h)),
          Padding(
              padding: EdgeInsets.only(bottom: 16.v),
              child: Text(kavinNagaraj,
                  style: CustomTextStyles.labelLargeTitilliumWebGray200
                      .copyWith(color: appTheme.gray200)))
        ]);
  }

  /// Navigates to the tenScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.tenScreen,
    );
  }

  /// Navigates to the twelveScreen when the action is triggered.
  navi12() {
    Get.offNamed(
      AppRoutes.twelveScreen,
    );
  }
}
