import '../frame_33729_screen/widgets/cart_item_widget.dart';
import '../frame_33729_screen/widgets/transferhistory_item_widget.dart';
import 'controller/frame_33729_controller.dart';
import 'models/cart_item_model.dart';
import 'models/transferhistory_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/app_bar/appbar_leading_image.dart';
import 'package:faz/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Frame33729Screen extends GetWidget<Frame33729Controller> {
  const Frame33729Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                height: 893,
                width: 395,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 43),
                child: Column(children: [
                  Opacity(
                      opacity: 0.2,
                      child:
                          Divider(color: appTheme.black900.withOpacity(0.42))),
                  SizedBox(height: 1),
                  SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 19),
                                child: Text("lbl_recent".tr,
                                    style: CustomTextStyles
                                        .titleMediumWhiteA700Medium_1)),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _buildTransferHistory(),
                            ),
                            SizedBox(height: 1),
                            _buildYesterday(),
                            SizedBox(height: 27),
                            _buildCart()
                          ])),
                  SizedBox(height: 5)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 67,
        leadingWidth: 395,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame33710,
            margin: EdgeInsets.fromLTRB(43, 21, 320, 22),
            onTap: () {
              navi8();
            }));
  }

  /// Section Widget
  Widget _buildTransferHistory() {
    return Obx(() => ListView.separated(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Opacity(
              opacity: 0.2,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.5),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 1,
                          thickness: 1,
                          color: appTheme.whiteA700.withOpacity(0.42)))));
        },
        itemCount: controller
            .frame33729ModelObj.value.transferhistoryItemList.value.length,
        itemBuilder: (context, index) {
          TransferhistoryItemModel model = controller.frame33729ModelObj
              .value.transferhistoryItemList.value[index];
          return TransferhistoryItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildYesterday() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text("lbl_yesterday".tr,
              style: CustomTextStyles.titleMediumWhiteA700Medium_1)),
      SizedBox(height: 4),
      Opacity(
          opacity: 0.2,
          child: Divider(color: appTheme.whiteA700.withOpacity(0.42)))
    ]);
  }

  /// Section Widget
  Widget _buildCart() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Opacity(
              opacity: 0.2,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.5),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 1,
                          thickness: 1,
                          color: appTheme.whiteA700.withOpacity(0.42)))));
        },
        itemCount:
            controller.frame33729ModelObj.value.cartItemList.value.length,
        itemBuilder: (context, index) {
          CartItemModel model =
              controller.frame33729ModelObj.value.cartItemList.value[index];
          return CartItemWidget(model);
        }));
  }

  /// Navigates to the eightScreen when the action is triggered.
  navi8() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );
  }
}
