import 'package:faz/auth_controller.dart';
import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/eight_screen/eight_screen.dart';
import 'package:faz/presentation/three_screen/models/three_model.dart';

/// A controller class for the ThreeScreen.
///
/// This class manages the state of the ThreeScreen, including the
/// current threeModelObj
class ThreeController extends GetxController
    // with CodeAutoFill
{
  static ThreeController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isverified = await AuthController.instance.verifyOTP(otp);
    isverified ? Get.offNamed(AppRoutes.eightScreen): Get.back();
  }
  // Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ThreeModel> threeModelObj = ThreeModel().obs;

// @override void codeUpdated() { otpController.value.text = code ?? ''; }
// @override void onInit() { super.onInit(); listenForCode(); }

  }

