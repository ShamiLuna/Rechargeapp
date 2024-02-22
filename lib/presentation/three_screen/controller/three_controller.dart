import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/three_screen/models/three_model.dart';

/// A controller class for the ThreeScreen.
///
/// This class manages the state of the ThreeScreen, including the
/// current threeModelObj
class ThreeController extends GetxController
    // with CodeAutoFill
{
  // Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ThreeModel> threeModelObj = ThreeModel().obs;

// @override void codeUpdated() { otpController.value.text = code ?? ''; }
// @override void onInit() { super.onInit(); listenForCode(); }
  void onInit() {
    // super.onInit();
    Get.lazyPut(
      AppRoutes.fourScreen as InstanceBuilderCallback,
    );
  }
}
