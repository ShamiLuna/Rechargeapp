import 'controller/app_navigation_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Transaction  Succes159".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionSucces159Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Electric One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.electricOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment pinwSixtyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentPinwsixtythreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame 33752".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame33752Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame 33753".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame33753Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "water359".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.water359Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentyTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "AmountwSixty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.amountwsixtyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction Success".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionSuccesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Fifteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fifteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Framef".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.framefScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manual Verificationg".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.manualVerificationgScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment Details156".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentDetails156Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Eleven - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.elevenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gas homeFiftyOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gasHomefiftyoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentySix".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentysixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: " Gas RegisterFiftyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.gasRegisterfiftytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.nineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction  Loading".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionLoadingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manual Verification wSixtyOne".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.manualVerificationWsixtyoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentyThree".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentythreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.threeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Thirteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Water homeFiftySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.waterHomefiftysevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentyFour".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentyfourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentyFive".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentyfiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentySeven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentysevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment PinFiftySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentPinfiftysevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TwentyEight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentyeightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Electric Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.electricThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Seventeen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.seventeenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortyEight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortyeightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Thirty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ThirtyOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtyoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ThirtyTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ThirtyThree".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtythreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ThirtyFour".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtyfourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ThirtyFive".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtyfiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction  SucceswSixtyFive".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionSucceswsixtyfiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Twelve".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twelveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ThirtySix".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirtysixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame 33712".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame33712Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Amount154".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.amount154Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Frame 33729".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.frame33729Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortyOne".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortyoneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortyTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortyThree".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortythreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortyFive".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortyfiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortySix".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortysixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortyNine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortynineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manual Verification155".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.manualVerification155Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gas BillFiftyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.gasBillfiftythreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction  Loading158".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionLoading158Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Transaction  LoadingwSixtyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.transactionLoadingwsixtyfourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment DetailswSixtyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentDetailswsixtytwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "water258".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.water258Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FortySeven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fortysevenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Divider(
            height: 1,
            thickness: 1,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(height: 5),
            Divider(
              height: 1,
              thickness: 1,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
