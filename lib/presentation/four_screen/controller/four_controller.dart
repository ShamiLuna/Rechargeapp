import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/four_screen/models/four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FourScreen.
///
/// This class manages the state of the FourScreen, including the
/// current fourModelObj
class FourController extends GetxController {

  TextEditingController emailFloatingTextFieldController =
  TextEditingController();

  TextEditingController nameFloatingTextFieldController =
  TextEditingController();

  TextEditingController passwordFloatingTextFieldController =
  TextEditingController();

  Rx<FourModel> fourModelObj = FourModel().obs;

  // Set a variable in bool both methods are applicable
  var isPasswordHidden = true.obs;
  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFloatingTextFieldController.dispose();
    nameFloatingTextFieldController.dispose();
    passwordFloatingTextFieldController.dispose();
  }

  @override
  void onInit() {
    // super.onInit();
    Get.offNamed(
      AppRoutes.fourScreen,
    );
  }

  @override
  void onReady() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );

  }
}
