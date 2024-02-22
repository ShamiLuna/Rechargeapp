import '../controller/manual_verification155_controller.dart';
import '../models/userprofile4_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  var controller = Get.find<ManualVerification155Controller>();

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 15,
        ),
        decoration: AppDecoration.outlineWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 3),
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 6,
              ),
              decoration: AppDecoration.fillOrangeA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    margin: EdgeInsets.only(right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Obx(
                            () => Text(
                              userprofile4ItemModelObj.accountText!.value,
                              style: CustomTextStyles.poppinsWhiteA700Regular,
                            ),
                          ),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofile4ItemModelObj.userImage!.value,
                            height: 5,
                            width: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1),
                  Obx(
                    () => Text(
                      userprofile4ItemModelObj.amountText!.value,
                      style: CustomTextStyles.poppinsWhiteA700SemiBold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 60,
                    margin: EdgeInsets.only(right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Obx(
                            () => Text(
                              userprofile4ItemModelObj.cardNumberText!.value,
                              style: CustomTextStyles.poppinsWhiteA700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Obx(
                            () => Text(
                              userprofile4ItemModelObj.cardTypeText!.value,
                              style: CustomTextStyles.poppinsWhiteA700Medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                top: 7,
                bottom: 7,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile4ItemModelObj.transferVisaText!.value,
                      style: CustomTextStyles.titleSmall14_1,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Obx(
                      () => Text(
                        userprofile4ItemModelObj.transferCardNumberText!.value,
                        style: CustomTextStyles.bodySmall_1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
