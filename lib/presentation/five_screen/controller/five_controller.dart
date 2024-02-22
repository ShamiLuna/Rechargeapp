import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/five_screen/models/five_model.dart';

/// A controller class for the FiveScreen.
///
/// This class manages the state of the FiveScreen, including the
/// current fiveModelObj
class FiveController extends GetxController {
  // TextEditingController passwordController = TextEditingController();

  Rx<FiveModel> fiveModelObj = FiveModel().obs;

  Rx<bool> isShowPassword = true.obs;

  // @override
  // void onClose() {
  //   super.onClose();
  //   passwordController.dispose();
  // }
 @override void onReady() {
   Get.offNamed(AppRoutes.framefScreen); }
}
