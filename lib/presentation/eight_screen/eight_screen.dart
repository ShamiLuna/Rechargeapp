import '../eight_screen/widgets/framelist_item_widget.dart';
import '../eight_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/eight_controller.dart';
import 'models/framelist_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class EightScreen extends GetWidget<EightController> {
  const EightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: 415,
            height: 810,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 20),
              Expanded(
                  child: Container(
                      height: 720,
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child:
                          Stack(alignment: Alignment.topCenter, children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              child: SingleChildScrollView(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 320,
                                      ),
                                      _buildOperationsRow(),
                                      SizedBox(height: 5),
                                      _buildUserProfileList(),
                                      SizedBox(height: 10),
                                      Opacity(
                                          opacity: 0.8,
                                          child: Text(
                                              "lbl_subscriptions".tr,
                                              style: CustomTextStyles
                                                  .bodyLargePoppinsWhiteA700)),
                                      SizedBox(height: 1),
                                      _buildFrameList(),
                                      SizedBox(height: 21),
                                      _buildWidgetStack(),
                                      SizedBox(height: 20),
                                      Container(
                                        height: 80,
                                        child: ListView(
                                            scrollDirection:
                                                Axis.horizontal,
                                            // alignment: Alignment
                                            //     .bottomRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              right: 2),
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
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                      "lbl_26_mar_2022".tr,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: theme.textTheme
                                                          .labelLarge)),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                      "lbl_28_mar_2022".tr,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: theme.textTheme
                                                          .labelLarge)),
                                              // _buildDynamicTextList()
                                            ]),
                                      )
                                    ]),
                              )),
                        ),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 280,
                                width: 400,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight:
                                            Radius.circular(15))))),
                        _buildHomeStack()
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildOperationsRow() {
    return Padding(
        padding: EdgeInsets.only(right: 18),
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
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text("lbl_see_all2".tr,
                          style:
                              CustomTextStyles.labelLargeTitilliumWebPrimary)))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
        height: 100,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 18),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 41);
            },
            itemCount:
                controller.eightModelObj.value.userprofilelistItem.value.length,
            itemBuilder: (BuildContext context, int index) {
              UserprofilelistItemModel model = controller
                  .eightModelObj.value.userprofilelistItem.value[index];
              return UserprofilelistItemWidget(
                model,
                onTapViewHierarchy: () {
                  onTapViewHierarchy();
                },
                onTapViewHierarchye: () {
                  onTapViewHierarchye();
                },
                onTapWidget: () {
                  onTapWidget();
                },
                onTapWidgete: () {
                  onTapWidgete();
                },
              );
            })));
  }

  /// Section Widget
  Widget _buildFrameList() {
    return SizedBox(
        height: 60,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 11);
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
        height: 159,
        width: 337,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup23x25,
              height: 23,
              width: 25,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 6)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle1064,
              height: 159,
              width: 337,
              radius: BorderRadius.circular(6),
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  // Widget _buildDynamicTextList() {
  //   return Align(
  //       alignment: Alignment.bottomCenter,
  //       child: Obx(() => GridView.builder(
  //           shrinkWrap: true,
  //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //               mainAxisExtent: 160.v,
  //               crossAxisCount: 2,
  //               mainAxisSpacing: 105.h,
  //               crossAxisSpacing: 105.h),
  //           physics: NeverScrollableScrollPhysics(),
  //           itemCount: controller
  //               .eightModelObj.value.dynamictextlistItemList.value.length,
  //           itemBuilder: (context, index) {
  //             DynamictextlistItemModel model = controller
  //                 .eightModelObj.value.dynamictextlistItemList.value[index];
  //             return DynamictextlistItemWidget(model);
  //           })));
  // }

  /// Section Widget
  Widget _buildHomeStack() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 275,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector55,
                  height: 125,
                  width: 200,
                  alignment: Alignment.topLeft),
              CustomImageView(
                  imagePath: ImageConstant.imgVector56,
                  height: 180,
                  width: 380,
                  alignment: Alignment.bottomCenter),
              Opacity(
                  opacity: 0.3,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 58),
                          child: SizedBox(
                              width: 343,
                              child: Divider(color: appTheme.gray40075))))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 36, right: 25),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    height: 32,
                                    width: 56,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup285,
                                              height: 20,
                                              width: 17,
                                              alignment: Alignment.bottomRight,
                                              onTap: (){
                                                frame729();
                                              },
                                              margin:
                                                  EdgeInsets.only(right: 11)
                                          ),
                                          CustomImageView(
                                              // imagePath:
                                              //     ImageConstant.imgGroup33701,
                                              height: 27,
                                              width: 56,
                                              alignment: Alignment.topCenter,
                                              onTap: () {
                                                frame729();
                                              })
                                        ]))),
                            SizedBox(height: 1),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlay,
                                          height: 55,
                                          width: 55),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 4, bottom: 6),
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
                            SizedBox(height: 55),
                            Text("msg_available_balance".tr,
                                style: CustomTextStyles.titleLargeRegular),
                            SizedBox(height: 4),
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

  onTapViewHierarchy() {
    Get.toNamed(AppRoutes.tenScreen);
  }

  /// Navigates to the electricOneScreen when the action is triggered.
  onTapWidget() {
    Get.toNamed(AppRoutes.fortyScreen);
  }

  onTapViewHierarchye() {
    Get.toNamed(AppRoutes.electricOneScreen);
  }

  onTapWidgete() {
    Get.toNamed(AppRoutes.thirtyScreen);
  }

  onTapViewGas() {
    Get.toNamed(AppRoutes.gasHomefiftyoneScreen);
  }

  onTapViewWatter() {
    Get.toNamed(AppRoutes.waterHomefiftysevenScreen);
  }

  /// Navigates to the eightScreen when the action is triggered.
  onTapBack() {
    Get.toNamed(
      AppRoutes.eightScreen,
    );
  }
}
