import 'package:faz/presentation/electric_one_screen/electric_one_screen.dart';
import 'package:faz/presentation/ten_screen/ten_screen.dart';
import 'package:faz/presentation/thirty_screen/thirty_screen.dart';

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
    this.naca,
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 12.v,
              ),

              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: userprofilelistItemModelObj.cableImage!.value,
                      height: 2.v,
                      width: 3.h,
                      margin: EdgeInsets.only(),
                      onTap: () {
                        naca!.call();
                      },
                    ),
                  ),
                  Obx(
                        () => CustomImageView(
                      imagePath: userprofilelistItemModelObj.cableImage!.value,
                      height: 2.v,
                      width: 3.h,
                      margin: EdgeInsets.only(),
                      onTap: () {
                        TenScreen()!;
                      },
                    ),
                  ), Obx(
                        () => CustomImageView(
                      imagePath: userprofilelistItemModelObj.cableImage!.value,
                      height: 2.v,
                      width: 3.h,
                      margin: EdgeInsets.only(),
                      onTap: () {
                        ElectricOneScreen();
                      },
                    ),
                  ), Obx(
                        () => CustomImageView(
                      imagePath: userprofilelistItemModelObj.cableImage!.value,
                      height: 2.v,
                      width: 3.h,
                      margin: EdgeInsets.only(),
                      onTap: () {
                        ThirtyScreen();
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Obx(
                () => Text(
                  userprofilelistItemModelObj.dynamicTextProp!.value,
                  style: CustomTextStyles.bodySmallWhiteA70011,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
