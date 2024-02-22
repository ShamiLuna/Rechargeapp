import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/six_screen/models/six_model.dart';

/// A controller class for the SixScreen.
///
/// This class manages the state of the SixScreen, including the
/// current sixModelObj
class SixController extends GetxController {
  // TextEditingController newpasswordController = TextEditingController();
  //
  // TextEditingController passwordController = TextEditingController();

  Rx<SixModel> sixModelObj = SixModel().obs;

  Rx<bool> isShowPassword = true.obs;

  // @override
  // void onClose() {
  //   super.onClose();
  //   newpasswordController.dispose();
  //   passwordController.dispose();
  // }

  @override
  void oninit() {
    Get.offNamed(
      AppRoutes.eightScreen,
    );
  }
}
