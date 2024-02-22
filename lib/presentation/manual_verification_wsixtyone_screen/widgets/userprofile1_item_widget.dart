import '../controller/manual_verification_wsixtyone_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ManualVerificationWsixtyoneController>();

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
                              userprofile1ItemModelObj.accountText!.value,
                              style: CustomTextStyles.poppinsWhiteA700Regular,
                            ),
                          ),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofile1ItemModelObj.userImage!.value,
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
                      userprofile1ItemModelObj.amountText!.value,
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
                              userprofile1ItemModelObj.cardNumberText!.value,
                              style: CustomTextStyles.poppinsWhiteA700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Obx(
                            () => Text(
                              userprofile1ItemModelObj.cardTypeText!.value,
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
                      userprofile1ItemModelObj.transferVisaText!.value,
                      style: CustomTextStyles.titleSmall14_1,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Obx(
                      () => Text(
                        userprofile1ItemModelObj.transferCardNumberText!.value,
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
