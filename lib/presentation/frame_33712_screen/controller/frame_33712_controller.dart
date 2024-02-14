import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/frame_33712_screen/models/frame_33712_model.dart';

/// A controller class for the Frame33712Screen.
///
/// This class manages the state of the Frame33712Screen, including the
/// current frame33712ModelObj
class Frame33712Controller extends GetxController {
  Rx<Frame33712Model> frame33712ModelObj = Frame33712Model().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.offNamed(
        AppRoutes.oneScreen,
      );
    });
  }
}
