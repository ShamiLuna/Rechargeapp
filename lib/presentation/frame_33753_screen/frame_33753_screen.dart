import 'controller/frame_33753_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:faz/presentation/frame_33754_dialog/frame_33754_dialog.dart';
import 'package:faz/presentation/frame_33754_dialog/controller/frame_33754_controller.dart';

class Frame33753Screen extends GetWidget<Frame33753Controller> {
  const Frame33753Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 395,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35, vertical: 34),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 15,
                                        width: 13,
                                        onTap: () {
                                          onTapImgClose();
                                        }),
                                    SizedBox(height: 69),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 24),
                                        decoration: AppDecoration.fillGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height: 126,
                                                  width: 126,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 26,
                                                      vertical: 32),
                                                  decoration: AppDecoration
                                                      .fillPrimary
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder63),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgCheckmark,
                                                      height: 62,
                                                      width: 73,
                                                      alignment:
                                                          Alignment.center)),
                                              SizedBox(height: 25),
                                              Text(
                                                  "msg_transffered_succesfully"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .titleLargeTitilliumWeb),
                                              SizedBox(height: 11),
                                              Divider(
                                                  indent: 3, endIndent: 6),
                                              SizedBox(height: 41),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 5),
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
                                              SizedBox(height: 24),
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
                                              SizedBox(height: 25),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 3),
                                                  child:
                                                      _buildTransactionSuccess(
                                                          transferCostText:
                                                              "lbl_amount".tr,
                                                          priceText:
                                                              "lbl_456_00".tr)),
                                              SizedBox(height: 24),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 2),
                                                  child:
                                                      _buildTransactionSuccess(
                                                          transferCostText:
                                                              "lbl_transfer_cost"
                                                                  .tr,
                                                          priceText:
                                                              "lbl_00_00".tr)),
                                              SizedBox(height: 24),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 4),
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
                                              SizedBox(height: 42)
                                            ])),
                                    SizedBox(height: 63),
                                    CustomElevatedButton(
                                        height: 43,
                                        text: "lbl_done".tr.toUpperCase(),
                                        onPressed: () {
                                          onTapDone();
                                        }),
                                    SizedBox(height: 23)
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

  /// Displays a dialog with the [Frame33754Dialog] content.
  onTapDone() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: Frame33754Dialog(
        Get.put(
          Frame33754Controller(),
        ),
      ),
    ));
  }
}
