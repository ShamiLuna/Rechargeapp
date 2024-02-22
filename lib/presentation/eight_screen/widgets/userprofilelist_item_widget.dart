import '../controller/eight_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj,
      {
    Key? key,
        this.onTapViewHierarchy,
        this.onTapViewHierarchye,
        this.onTapViewGas,
        this.onTapViewWatter,
        this.onTapWidget,
        this.onTapWidgete,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;
  // UserprofilelistItemModel2 userprofilelistItemModel2Obj;
  // UserprofilelistItemModel3 userprofilelistItemModel3Obj;
  // UserprofilelistItemModel4 userprofilelistItemModel4Obj;
  //
  var controller = Get.find<EightController>();
  VoidCallback? naca;
  VoidCallback? onTapViewHierarchy;
  VoidCallback? onTapViewHierarchye;
  VoidCallback? onTapWidgete;
  VoidCallback? onTapViewGas;
  VoidCallback? onTapWidget;
  VoidCallback? onTapViewWatter;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    onTapWidget!.call();
                  },
                  child: Container(
                    height: 32,
                    width: 52,
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Obx(
                          () => CustomImageView(
                        imagePath: userprofilelistItemModelObj.cable!.value,
                        height: 24,
                        width: 24,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 1,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(),
                      child: Obx(
                            () => Text(
                              userprofilelistItemModelObj.cableText!.value,
                          style: CustomTextStyles.bodySmallWhiteA70011,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 8),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapViewHierarchy!.call();
                  },
                  child: Container(
                    height: 32,
                    width: 52,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Obx(
                          () => CustomImageView(
                        imagePath: userprofilelistItemModelObj.Mobile!.value,
                        height: 24,
                        width: 24,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Obx(
                          () => Text(
                            userprofilelistItemModelObj.MobileText!.value,
                        style: CustomTextStyles.bodySmallWhiteA70011,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(width: 1),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapViewHierarchye!.call();
                  },
                  child: Container(
                    height: 32,
                    width: 52,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Obx(
                          () => CustomImageView(
                        imagePath:userprofilelistItemModelObj.Electricity!.value,
                        height: 24,
                        width: 24,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 8,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Obx(
                          () => Text(
                            userprofilelistItemModelObj.ElectricityText!.value,
                        style: CustomTextStyles.bodySmallWhiteA70011,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 19),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapWidgete!.call();
                  },
                  child: Container(
                    height: 32,
                    width: 52,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Obx(
                          () => CustomImageView(
                        imagePath: userprofilelistItemModelObj.DTH!.value,
                        height: 24,
                        width: 24,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Obx(
                          () => Text(
                            userprofilelistItemModelObj.DTHText!.value,
                        style: CustomTextStyles.bodySmallWhiteA70011,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 40),
          ],
        ),
        SizedBox(height: 5),
        // Padding(
        //   padding: const EdgeInsets.all(1.0),
        //   child: Obx(
        //     () => Text(
        //       userprofilelistItemModelObj.cableText!.value,
        //       style: CustomTextStyles.bodySmallWhiteA70011,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
