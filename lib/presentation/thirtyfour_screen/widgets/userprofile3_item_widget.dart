import '../controller/thirtyfour_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<ThirtyfourController>();

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 6.v,
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
                    width: 60.h,
                    margin: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.8,
                          child: Obx(
                            () => Text(
                              userprofile3ItemModelObj.accountText!.value,
                              style: CustomTextStyles.poppinsWhiteA700Regular,
                            ),
                          ),
                        ),
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofile3ItemModelObj.userImage!.value,
                            height: 5.v,
                            width: 13.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Obx(
                    () => Text(
                      userprofile3ItemModelObj.amountText!.value,
                      style: CustomTextStyles.poppinsWhiteA700SemiBold,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    width: 60.h,
                    margin: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Obx(
                            () => Text(
                              userprofile3ItemModelObj.cardNumberText!.value,
                              style: CustomTextStyles.poppinsWhiteA700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.v),
                          child: Obx(
                            () => Text(
                              userprofile3ItemModelObj.cardTypeText!.value,
                              style: CustomTextStyles.poppinsWhiteA700Medium,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile3ItemModelObj.transferVisaText!.value,
                      style: CustomTextStyles.titleSmall14_1,
                    ),
                  ),
                  Opacity(
                    opacity: 0.4,
                    child: Obx(
                      () => Text(
                        userprofile3ItemModelObj.cardNumberText1!.value,
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
