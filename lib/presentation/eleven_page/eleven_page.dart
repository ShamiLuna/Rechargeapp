import 'controller/eleven_controller.dart';
import 'models/eleven_model.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

class ElevenPage extends StatelessWidget {
  ElevenPage({Key? key})
      : super(
          key: key,
        );

  ElevenController controller = Get.put(ElevenController(ElevenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(),
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 38.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 154.v,
                  width: 11.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(11.h),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 9.v,
                    bottom: 22.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 135.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Text(
                          "msg_offer_23_days".tr,
                          style: CustomTextStyles.bodySmallDMSansWhiteA700_1,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        width: 295.h,
                        child: Row(
                          children: [
                            Text(
                              "lbl_249".tr,
                              style: CustomTextStyles.titleSmallDMSansWhiteA700,
                            ),
                            Spacer(),
                            Text(
                              "lbl_data_2_gb".tr,
                              style: CustomTextStyles.titleSmallDMSansWhiteA700,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 23.h),
                              child: Text(
                                "msg_validity_28_days".tr,
                                style:
                                    CustomTextStyles.titleSmallDMSansWhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "msg_voice_unlimited".tr,
                          style: CustomTextStyles.bodyMediumDMSansWhiteA700,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "msg_special_offer".tr,
                          style: CustomTextStyles.bodyMediumDMSansWhiteA700,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_additional_benefits2".tr,
                                style:
                                    CustomTextStyles.labelLargeDMSans8cffffff,
                              ),
                              TextSpan(
                                text: "lbl_more_details".tr,
                                style:
                                    CustomTextStyles.labelLargeDMSansffa456f6,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
