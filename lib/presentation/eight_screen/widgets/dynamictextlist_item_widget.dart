import '../controller/eight_controller.dart';
import '../models/dynamictextlist_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamictextlistItemWidget extends StatelessWidget {
  DynamictextlistItemWidget(
    this.dynamictextlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamictextlistItemModel dynamictextlistItemModelObj;

  var controller = Get.find<EightController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => Text(
              dynamictextlistItemModelObj.text1!.value,
              style: CustomTextStyles.bodyMediumWhiteA700,
            ),
          ),
          Obx(
            () => Text(
              dynamictextlistItemModelObj.text2!.value,
              style: CustomTextStyles.bodySmallBluegray30001,
            ),
          ),
          SizedBox(height: 26.v),
          Obx(
            () => Text(
              dynamictextlistItemModelObj.text3!.value,
              style: CustomTextStyles.bodyMediumWhiteA700,
            ),
          ),
          Obx(
            () => Text(
              dynamictextlistItemModelObj.text4!.value,
              style: CustomTextStyles.bodySmallBluegray30001,
            ),
          ),
          SizedBox(height: 27.v),
          Obx(
            () => Text(
              dynamictextlistItemModelObj.text5!.value,
              style: CustomTextStyles.bodyMediumWhiteA700,
            ),
          ),
          Obx(
            () => Text(
              dynamictextlistItemModelObj.text6!.value,
              style: CustomTextStyles.bodySmallBluegray30001,
            ),
          ),
        ],
      ),
    );
  }
}
