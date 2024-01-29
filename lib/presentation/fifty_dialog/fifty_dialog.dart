import 'controller/fifty_controller.dart';import 'package:faz/core/app_export.dart';import 'package:faz/widgets/custom_elevated_button.dart';import 'package:faz/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class FiftyDialog extends StatelessWidget {FiftyDialog(this.controller, {Key? key}) : super(key: key);

FiftyController controller;

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 163.v), color: appTheme.gray900, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder20), child: Container(height: 555.v, width: 325.h, padding: EdgeInsets.symmetric(vertical: 6.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomRight, child: Container(width: 230.h, margin: EdgeInsets.only(right: 33.h, bottom: 58.v), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_all_your_transactions2".tr, style: CustomTextStyles.bodySmallff000000), TextSpan(text: "msg_terms_conditions".tr, style: CustomTextStyles.labelLargeffff897e)]), textAlign: TextAlign.left))), Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 25.h, top: 28.v, right: 25.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Text("lbl_payment_details".tr, style: theme.textTheme.titleMedium), SizedBox(height: 64.v), Padding(padding: EdgeInsets.only(right: 4.h), child: _buildTopUpSection(choosePaymentMethodSection: "lbl_amount".tr, dynamicText1: "lbl_20_00".tr)), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(right: 4.h), child: _buildTopUpSection(choosePaymentMethodSection: "lbl_top_up_type".tr, dynamicText1: "lbl_paypall".tr)), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.4, child: Text("lbl_transaction_id".tr, style: CustomTextStyles.bodySmallBlack900_1)), Text("msg_234_7658_094_678".tr, style: CustomTextStyles.bodySmallBlack900)])), SizedBox(height: 24.v), Padding(padding: EdgeInsets.only(right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.4, child: Text("lbl_time_date".tr, style: CustomTextStyles.bodySmallBlack900_1)), Text("msg_01_03_22_11_00".tr, style: CustomTextStyles.bodySmallBlack900)])), SizedBox(height: 65.v), GestureDetector(onTap: () {onTapChoosePay();}, child: Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 13.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text("msg_choose_payment_methode".tr.toUpperCase(), style: theme.textTheme.titleSmall)])))]))), CustomImageView(imagePath: ImageConstant.imgCheckmarkBlueGray300, height: 22.v, width: 17.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 27.h, bottom: 80.v)), Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 45.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 8.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 131.v, width: 146.h, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.centerLeft, child: Container(margin: EdgeInsets.only(right: 15.h), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 6.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup842), fit: BoxFit.cover)), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, children: [SizedBox(height: 14.v), Container(height: 5.adaptSize, width: 5.adaptSize, margin: EdgeInsets.only(right: 37.h), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(2.h))), SizedBox(height: 19.v), Align(alignment: Alignment.center, child: Container(height: 2.adaptSize, width: 2.adaptSize, decoration: BoxDecoration(color: appTheme.teal200, borderRadius: BorderRadius.circular(1.h)))), SizedBox(height: 74.v), Container(height: 5.adaptSize, width: 5.adaptSize, decoration: BoxDecoration(color: appTheme.indigo400, borderRadius: BorderRadius.circular(2.h)))]))), CustomIconButton(height: 28.adaptSize, width: 28.adaptSize, padding: EdgeInsets.all(7.h), alignment: Alignment.topRight, child: CustomImageView(imagePath: ImageConstant.imgCheckmarkWhiteA700))])), Container(height: 2.adaptSize, width: 2.adaptSize, margin: EdgeInsets.only(left: 25.h, top: 55.v, bottom: 74.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(1.h)))])), SizedBox(height: 34.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Text("msg_transaction_successful3".tr, style: CustomTextStyles.titleLargeRoboto))), SizedBox(height: 39.v), Align(alignment: Alignment.center, child: Opacity(opacity: 0.4, child: Container(width: 230.h, margin: EdgeInsets.symmetric(horizontal: 13.h), child: Text("msg_lorem_ipsum_dolor".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodySmallRoboto.copyWith(height: 1.83))))), SizedBox(height: 33.v), CustomElevatedButton(text: "lbl_done".tr.toUpperCase(), margin: EdgeInsets.only(left: 8.h), buttonTextStyle: CustomTextStyles.titleSmallRoboto_1)])))])))); } 
/// Common widget
Widget _buildTopUpSection({required String choosePaymentMethodSection, required String dynamicText1, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Opacity(opacity: 0.4, child: Text(choosePaymentMethodSection, style: CustomTextStyles.bodySmallBlack900_1.copyWith(color: appTheme.black900.withOpacity(0.49)))), Text(dynamicText1, style: CustomTextStyles.bodySmallBlack900.copyWith(color: appTheme.black900))]); } 
/// Navigates to the manualVerificationgScreen when the action is triggered.
onTapChoosePay() { Get.toNamed(AppRoutes.manualVerificationgScreen, ); } 
 }