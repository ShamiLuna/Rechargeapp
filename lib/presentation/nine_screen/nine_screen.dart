import '../nine_screen/widgets/viewhierarchy1_item_widget.dart';
import 'controller/nine_controller.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/appbar_title.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NineScreen extends GetWidget<NineController> {
  const NineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: 450.h,
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(children: [
                  // SizedBox(height: 84.v,width: 40.h,),
                  _buildViewHierarchy()
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
            text: "lbl_see_all".tr, margin: EdgeInsets.only(left: 13.h)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Expanded(
        child: Obx(() => 
            // GridView.builder(
            // shrinkWrap: true,
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //     mainAxisExtent: 75.v,
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 41.h,
            //     crossAxisSpacing: 8.h
            // ),
            // physics: BouncingScrollPhysics(),
            // itemCount: controller
            //     .nineModelObj.value.viewhierarchy1ItemList.value.length,
            // itemBuilder: (context, index) {
            //   Viewhierarchy1ItemModel model = controller
            //       .nineModelObj.value.viewhierarchy1ItemList.value[index];
            //   return Viewhierarchy1ItemWidget(model, onTapViewHierarchy: () {onTapViewHierarchy();}, onTapWidget: () {onTapWidget();});
            //
            //   // return Viewhierarchy1ItemWidget(model,
            //   //     onTapViewHierarchye: () {
            //   //      onTapViewHierarchye();
            //   //     },
            //   //     onTapWidgete: () {
            //   //      onTapWidgete();
            //   //     });
            //   // return Viewhierarchy1ItemWidget(model,
            //   //     onTapViewHierarchy: () {
            //   //      onTapViewHierarchy();
            //   //     },
            //   //     onTapWidget: () {
            //   //      onTapWidget();
            //   //     });
            //   // return Viewhierarchy1ItemWidget(model,
            //   //     onTapViewHierarchy: () {
            //   //      onTapViewHierarchy();
            //   //     },
            //   //     onTapWidget: () {
            //   //      onTapWidget();
            //   //     });
            // }),
             Container(
               // height: 100,
               // width: 400,
               child: ListView.builder(
                           itemCount: controller
                       .nineModelObj.value.viewhierarchy1ItemList.value.length,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (BuildContext context, int index) {
                Viewhierarchy1ItemModel model = controller
                    .nineModelObj.value.viewhierarchy1ItemList.value[index];
                return Viewhierarchy1ItemWidget(model, onTapViewHierarchy: () {onTapViewHierarchy();},onTapViewHierarchye: (){onTapViewHierarchye();}, onTapWidget: () {onTapWidget();},onTapWidgete: (){onTapWidgete();},);
                           } ),
             ),
    ));
  }

  /// Navigates to the gasHomefiftyoneScreen when the action is triggered.
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