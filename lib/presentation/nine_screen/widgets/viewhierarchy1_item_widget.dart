import '../controller/nine_controller.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
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

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  var controller = Get.find<NineController>();
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
        // SizedBox(
        //   width: 10,
        // ),
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
                        imagePath: viewhierarchy1ItemModelObj.cable!.value,
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
                          viewhierarchy1ItemModelObj.cableText!.value,
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
                        imagePath: viewhierarchy1ItemModelObj.Mobile!.value,
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
                        viewhierarchy1ItemModelObj.MobileText!.value,
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
                        imagePath: viewhierarchy1ItemModelObj.Electricity!.value,
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
                        viewhierarchy1ItemModelObj.ElectricityText!.value,
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
                        imagePath: viewhierarchy1ItemModelObj.DTH!.value,
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
                        viewhierarchy1ItemModelObj.DTHText!.value,
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
        // SizedBox(
          // width: ,
        // ),
        // SizedBox(
        //   width: 200,
        // ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Column(
            //   children: [
            //     SizedBox(
            //       width: 10,
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         onTapWidget!.call();
            //       },
            //       child: Container(
            //         height: 32.v,
            //         width: 52.h,
            //         padding: EdgeInsets.symmetric(
            //           horizontal: 14.h,
            //           vertical: 10.v,
            //         ),
            //         decoration: AppDecoration.fillPrimaryContainer.copyWith(
            //           borderRadius: BorderRadiusStyle.roundedBorder6,
            //         ),
            //         child: Obx(
            //               () => CustomImageView(
            //             imagePath: viewhierarchy1ItemModelObj.cable!.value,
            //             height: 2.adaptSize,
            //             width: 2.adaptSize,
            //             alignment: Alignment.center,
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(width: 1,),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Align(
            //         alignment: Alignment.center,
            //         child: Padding(
            //           padding: EdgeInsets.only(),
            //           child: Obx(
            //                 () => Text(
            //               viewhierarchy1ItemModelObj.cableText!.value,
            //               style: CustomTextStyles.bodySmallWhiteA70011,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(width: 1),
            // SizedBox(width: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapViewGas!.call();
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
                        imagePath: viewhierarchy1ItemModelObj.Gas!.value,
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
                        viewhierarchy1ItemModelObj.GasText!.value,
                        style: CustomTextStyles.bodySmallWhiteA70011,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 29),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapViewWatter!.call();
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
                        imagePath: viewhierarchy1ItemModelObj.Watter!.value,
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
                        viewhierarchy1ItemModelObj.WaterText!.value,
                        style: CustomTextStyles.bodySmallWhiteA70011,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 220,
            ),
            // SizedBox(width: 180),
            // Column(
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         onTapWidgete!.call();
            //       },
            //       child: Container(
            //         height: 32.v,
            //         width: 52.h,
            //         padding: EdgeInsets.symmetric(
            //           horizontal: 14.h,
            //           vertical: 10.v,
            //         ),
            //         decoration: AppDecoration.fillPrimaryContainer.copyWith(
            //           borderRadius: BorderRadiusStyle.roundedBorder6,
            //         ),
            //         child: Obx(
            //               () => CustomImageView(
            //             imagePath: viewhierarchy1ItemModelObj.Mobile!.value,
            //             height: 24.adaptSize,
            //             width: 24.adaptSize,
            //             alignment: Alignment.center,
            //           ),
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Align(
            //         alignment: Alignment.center,
            //         child: Obx(
            //               () => Text(
            //             viewhierarchy1ItemModelObj.DTHText!.value,
            //             style: CustomTextStyles.bodySmallWhiteA70011,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),


          ],
        ),
        // SizedBox(height: 10.v),
        // Row(
        //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     SizedBox(width: 7),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Align(
        //         alignment: Alignment.centerRight,
        //         child: Padding(
        //           padding: EdgeInsets.only(right: 8.h),
        //           child: Obx(
        //             () => Text(
        //               viewhierarchy1ItemModelObj.cableText!.value,
        //               style: CustomTextStyles.bodySmallWhiteA70011,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     SizedBox(width: 2),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Align(
        //         alignment: Alignment.centerRight,
        //         child: Expanded(
        //           child: Obx(
        //                 () => Text(
        //               viewhierarchy1ItemModelObj.MobileText!.value,
        //               style: CustomTextStyles.bodySmallWhiteA70011,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     SizedBox(width: 5),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Align(
        //         alignment: Alignment.centerRight,
        //         child: Obx(
        //               () => Text(
        //             viewhierarchy1ItemModelObj.ElectricityText!.value,
        //             style: CustomTextStyles.bodySmallWhiteA70011,
        //           ),
        //         ),
        //       ),
        //     ),
        //     SizedBox(width: 5),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Align(
        //         alignment: Alignment.centerRight,
        //         child: Obx(
        //               () => Text(
        //             viewhierarchy1ItemModelObj.DTHText!.value,
        //             style: CustomTextStyles.bodySmallWhiteA70011,
        //           ),
        //         ),
        //       ),
        //     ),
        //     SizedBox(width: 5),
        //   ],
        // ),
      ],
    );
  }
}
