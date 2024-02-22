import '../controller/eight_controller.dart';
import '../models/framelist_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramelistItemWidget extends StatelessWidget {
  FramelistItemWidget(
    this.framelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FramelistItemModel framelistItemModelObj;

  var controller = Get.find<EightController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58,
      child: Obx(
        () => CustomImageView(
          imagePath: framelistItemModelObj.rectangle!.value,
          height: 53,
          width: 58,
          radius: BorderRadius.circular(
            5,
          ),
        ),
      ),
    );
  }
}
