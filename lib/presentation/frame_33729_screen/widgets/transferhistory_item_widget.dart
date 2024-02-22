import '../controller/frame_33729_controller.dart';
import '../models/transferhistory_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransferhistoryItemWidget extends StatelessWidget {
  TransferhistoryItemWidget(
    this.transferhistoryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TransferhistoryItemModel transferhistoryItemModelObj;

  var controller = Get.find<Frame33729Controller>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.only(bottom: 9),
          color: appTheme.deepPurple10001,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Container(
            height: 35,
            width: 35,
            padding: EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 3,
            ),
            decoration: AppDecoration.fillDeepPurple.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath:
                        transferhistoryItemModelObj.transferImage1!.value,
                    height: 15,
                    width: 9,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 4),
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath:
                        transferhistoryItemModelObj.transferImage2!.value,
                    height: 15,
                    width: 9,
                    alignment: Alignment.bottomRight,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 224,
            margin: EdgeInsets.only(
              left: 15,
              top: 2,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_tansfer".tr,
                    style: CustomTextStyles.titleSmallffa456f6,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "msg_you_have_transferred".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
