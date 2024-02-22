import 'package:faz/core/app_export.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

/// A controller class for the TwoScreen.
///
/// This class manages the state of the TwoScreen, including the
/// current twoModelObj
class TwoController extends GetxController {
  // TextEditingController phoneNumberController = TextEditingController();
  //
  // Rx<TwoModel> twoModelObj = TwoModel().obs;
  //
  // Rx<Country> selectedCountry =
  //     CountryPickerUtils.getCountryByPhoneCode('91').obs;
  TextEditingController _codecontroller = new TextEditingController();
  Rx<String> phoneNumber = "".obs, data = "".obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<String> smscode = "".obs;
  // @override
  // void onClose() {
  //   super.onClose();
  //   phoneNumberController.dispose();
  // }

  @override
  void onReady() {
    Get.lazyPut(
      AppRoutes.eightScreen as InstanceBuilderCallback,

    );
    Get.offNamed(
      AppRoutes.eightScreen,

    );
    Get.offNamed(
      AppRoutes.fourScreen,

    );
    Get.offNamed(
      AppRoutes.fourScreen,
    );
  }
  // @override
  // void onReady() {
  //   super.onInit();
  //   Get.offNamed(
  //     AppRoutes.threeScreen,
  //   );
  // }
}
  // @override
  // void