import '../eight_screen/widgets/dynamictextlist_item_widget.dart';
import '../eight_screen/widgets/framelist_item_widget.dart';
import '../eight_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/eight_controller.dart';
import 'models/dynamictextlist_item_model.dart';
import 'models/framelist_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class EightScreen extends GetWidget<EightController> {
  const EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 415.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 20.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 822.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.symmetric(horizontal: 20.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  _buildOperationsRow(),
                                                  SizedBox(height: 5.v),
                                                  _buildUserProfileList(),
                                                  SizedBox(height: 15.v),
                                                  Opacity(
                                                      opacity: 0.8,
                                                      child: Text(
                                                          "lbl_subscriptions"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .bodyLargePoppinsWhiteA700)),
                                                  SizedBox(height: 11.v),
                                                  _buildFrameList(),
                                                  SizedBox(height: 21.v),
                                                  _buildWidgetStack(),
                                                  SizedBox(height: 20.v),
                                                  SizedBox(
                                                      height: 124.v,
                                                      width: 319.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 2
                                                                            .h),
                                                                    child: Text(
                                                                        "lbl_25_mar_2022"
                                                                            .tr,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .right,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Text(
                                                                    "lbl_26_mar_2022"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Text(
                                                                    "lbl_28_mar_2022"
                                                                        .tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            _buildDynamicTextList()
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 280.v,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20.h),
                                                    topRight:
                                                        Radius.circular(20.h),
                                                    bottomLeft:
                                                        Radius.circular(15.h),
                                                    bottomRight:
                                                        Radius.circular(
                                                            15.h))))),
                                    _buildHomeStack()
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildOperationsRow() {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.8,
                  child: Text("lbl_operations".tr,
                      style: CustomTextStyles.bodyLargePoppinsWhiteA700)),
              GestureDetector(
                  onTap: () {
                    navito9();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Text("lbl_see_all2".tr,
                          style:
                              CustomTextStyles.labelLargeTitilliumWebPrimary)))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
        height: 80.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 18.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 41.h);
            },
            itemCount: controller
                .eightModelObj.value.userprofilelistItemList.value.length,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model = controller
                  .eightModelObj.value.userprofilelistItemList.value[index];
              return UserprofilelistItemWidget(model, naca: () {
                naca();

              });
            })));
  }

  /// Section Widget
  Widget _buildFrameList() {
    return SizedBox(
        height: 53.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 11.h);
            },
            itemCount:
                controller.eightModelObj.value.framelistItemList.value.length,
            itemBuilder: (context, index) {
              FramelistItemModel model =
                  controller.eightModelObj.value.framelistItemList.value[index];
              return FramelistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildWidgetStack() {
    return SizedBox(
        height: 159.v,
        width: 337.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup23x25,
              height: 23.v,
              width: 25.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 6.v)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1064,
              height: 159.v,
              width: 337.h,
              radius: BorderRadius.circular(6.h),
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildDynamicTextList() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 160.v,
                crossAxisCount: 2,
                mainAxisSpacing: 105.h,
                crossAxisSpacing: 105.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .eightModelObj.value.dynamictextlistItemList.value.length,
            itemBuilder: (context, index) {
              DynamictextlistItemModel model = controller
                  .eightModelObj.value.dynamictextlistItemList.value[index];
              return DynamictextlistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildHomeStack() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 275.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector55,
                  height: 125.v,
                  width: 202.h,
                  alignment: Alignment.topLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgVector56,
                  height: 172.v,
                  width: 386.h,
                  alignment: Alignment.bottomCenter),
              Opacity(
                  opacity: 0.3,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 58.v),
                          child: SizedBox(
                              width: 343.h,
                              child: Divider(color: appTheme.gray40075))))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 36.h, right: 25.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    height: 32.v,
                                    width: 56.h,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup285,
                                              height: 20.v,
                                              width: 17.h,
                                              alignment: Alignment.bottomRight,
                                              margin:
                                                  EdgeInsets.only(right: 11.h)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup33701,
                                              height: 27.v,
                                              width: 56.h,
                                              alignment: Alignment.topCenter,
                                              onTap: () {
                                                frame729();
                                              })
                                        ]))),
                            SizedBox(height: 1.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlay,
                                          height: 44.adaptSize,
                                          width: 44.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4.h, bottom: 6.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Opacity(
                                                    opacity: 0.8,
                                                    child: Text(
                                                        "lbl_welcome_back".tr,
                                                        style: CustomTextStyles
                                                            .bodyMediumWhiteA700_1)),
                                                Text("lbl_rene_wells2".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallInter)
                                              ]))
                                    ])),
                            SizedBox(height: 55.v),
                            Text("msg_available_balance".tr,
                                style: CustomTextStyles.titleLargeRegular),
                            SizedBox(height: 4.v),
                            Text("lbl_15_000".tr,
                                style: theme.textTheme.headlineLarge)
                          ])))
            ])));
  }

  /// Navigates to the fortyScreen when the action is triggered.
  naca() {
    Get.offNamed(AppRoutes.fortyScreen);
  }

  /// Navigates to the nineScreen when the action is triggered.
  navito9() {
    Get.offNamed(
      AppRoutes.nineScreen,
    );
  }

  /// Navigates to the frame33729Screen when the action is triggered.
  frame729() {
    Get.offNamed(
      AppRoutes.frame33729Screen,
    );
  }
}
