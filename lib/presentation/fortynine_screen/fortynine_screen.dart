import 'controller/fortynine_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:faz/presentation/fifty_dialog/fifty_dialog.dart';
import 'package:faz/presentation/fifty_dialog/controller/fifty_controller.dart';

class FortynineScreen extends GetWidget<FortynineController> {
  const FortynineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395.h,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35.h, vertical: 34.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 15.v,
                                        width: 13.h,
                                        onTap: () {
                                          onTapImgClose();
                                        }),
                                    SizedBox(height: 69.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.h, vertical: 24.v),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height: 126.adaptSize,
                                                  width: 126.adaptSize,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 26.h,
                                                      vertical: 32.v),
                                                  decoration: AppDecoration
                                                      .fillPrimary
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder63),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCheckmark,
                                                      height: 62.v,
                                                      width: 73.h,
                                                      alignment:
                                                          Alignment.center)),
                                              SizedBox(height: 25.v),
                                              Text(
                                                  "msg_transffered_succesfully"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .titleLargeTitilliumWeb),
                                              SizedBox(height: 11.v),
                                              Divider(
                                                  indent: 3.h, endIndent: 6.h),
                                              SizedBox(height: 41.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.4,
                                                            child: Text(
                                                                "lbl_name".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        Text(
                                                            "lbl_rene_wells".tr,
                                                            style: theme
                                                                .textTheme
                                                                .labelLarge)
                                                      ])),
                                              SizedBox(height: 24.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Opacity(
                                                      opacity: 0.4,
                                                      child: Text(
                                                          "lbl_transaction_id"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .bodySmall))),
                                              SizedBox(height: 25.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 3.h),
                                                  child:
                                                      _buildTransactionSuccess(
                                                          transferCostText:
                                                              "lbl_amount".tr,
                                                          priceText:
                                                              "lbl_456_00".tr)),
                                              SizedBox(height: 24.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 2.h),
                                                  child:
                                                      _buildTransactionSuccess(
                                                          transferCostText:
                                                              "lbl_transfer_cost"
                                                                  .tr,
                                                          priceText:
                                                              "lbl_00_00".tr)),
                                              SizedBox(height: 24.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 4.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Opacity(
                                                            opacity: 0.4,
                                                            child: Text(
                                                                "lbl_time_date"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall)),
                                                        Text(
                                                            "msg_01_03_22_11_00"
                                                                .tr,
                                                            style: CustomTextStyles
                                                                .bodySmallWhiteA700_1)
                                                      ])),
                                              SizedBox(height: 42.v)
                                            ])),
                                    SizedBox(height: 69.v),
                                    CustomElevatedButton(
                                        height: 49.v,
                                        text: "lbl_done".tr.toUpperCase(),
                                        onPressed: () {
                                          onTapDone();
                                        }),
                                    SizedBox(height: 23.v)
                                  ]))))
                ]))));
  }

  /// Common widget
  Widget _buildTransactionSuccess({
    required String transferCostText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.4,
          child: Text(transferCostText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.whiteA700.withOpacity(0.49)))),
      Text(priceText,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700))
    ]);
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }

  /// Displays a dialog with the [FiftyDialog] content.
  onTapDone() { Get.toNamed(AppRoutes.eightScreen, ); }
}
