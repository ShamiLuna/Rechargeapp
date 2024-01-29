import 'controller/fifteen_controller.dart';import 'package:faz/core/app_export.dart';import 'package:faz/widgets/app_bar/custom_app_bar.dart';import 'package:faz/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class FifteenScreen extends GetWidget<FifteenController> {const FifteenScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 30.v), child: Column(children: [Text("lbl_enter_your_pin".tr, style: CustomTextStyles.titleLargeInter), SizedBox(height: 63.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgClosePrimary, height: 44.adaptSize, width: 44.adaptSize), CustomImageView(imagePath: ImageConstant.imgClosePrimary, height: 44.adaptSize, width: 44.adaptSize, margin: EdgeInsets.only(left: 4.h)), CustomImageView(imagePath: ImageConstant.imgClosePrimary, height: 44.adaptSize, width: 44.adaptSize, margin: EdgeInsets.only(left: 4.h)), CustomImageView(imagePath: ImageConstant.imgClosePrimary, height: 44.adaptSize, width: 44.adaptSize, margin: EdgeInsets.only(left: 4.h))]), Spacer(), _buildNumbersRow(numberOne: "lbl_1".tr, numberTwo: "lbl_22".tr, numberThree: "lbl_32".tr), SizedBox(height: 58.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_4".tr, style: theme.textTheme.headlineSmall), Padding(padding: EdgeInsets.only(left: 86.h), child: Text("lbl_5".tr, style: theme.textTheme.headlineSmall)), Padding(padding: EdgeInsets.only(left: 86.h), child: Text("lbl_6".tr, style: theme.textTheme.headlineSmall))]), SizedBox(height: 58.v), _buildNumbersRow(numberOne: "lbl_7".tr, numberTwo: "lbl_8".tr, numberThree: "lbl_9".tr), SizedBox(height: 58.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_0".tr, style: theme.textTheme.headlineSmall), CustomImageView(imagePath: ImageConstant.imgCloseWhiteA70017x24, height: 17.v, width: 24.h, margin: EdgeInsets.fromLTRB(84.h, 4.v, 70.h, 6.v))]))), SizedBox(height: 70.v), CustomElevatedButton(width: 215.h, text: "lbl_confirm".tr.toUpperCase(), margin: EdgeInsets.only(left: 6.h), onPressed: () {onTapConfirm();}), SizedBox(height: 27.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 69.v, leadingWidth: double.maxFinite, leading: Container(height: 15.v, width: 13.h, margin: EdgeInsets.fromLTRB(25.h, 20.v, 337.h, 20.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgVector22, height: 15.v, width: 13.h, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgVector23, height: 15.v, width: 13.h, alignment: Alignment.center)]))); } 
/// Common widget
Widget _buildNumbersRow({required String numberOne, required String numberTwo, required String numberThree, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text(numberOne, style: theme.textTheme.headlineSmall!.copyWith(color: appTheme.whiteA700)), Padding(padding: EdgeInsets.only(left: 87.h), child: Text(numberTwo, style: theme.textTheme.headlineSmall!.copyWith(color: appTheme.whiteA700))), Padding(padding: EdgeInsets.only(left: 86.h), child: Text(numberThree, style: theme.textTheme.headlineSmall!.copyWith(color: appTheme.whiteA700)))]); } 
/// Navigates to the transactionLoadingScreen when the action is triggered.
onTapConfirm() { Get.toNamed(AppRoutes.transactionLoadingScreen, ); } 
 }
