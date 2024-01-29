import '../controller/gas_homefiftyone_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<GasHomefiftyoneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: viewhierarchyItemModelObj.circleImage!.value,
            height: 35.adaptSize,
            width: 35.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 6.v,
            bottom: 10.v,
          ),
          child: Obx(
            () => Text(
              viewhierarchyItemModelObj.text!.value,
              style: CustomTextStyles.labelLargeGray60004,
            ),
          ),
        ),
      ],
    );
  }
}
