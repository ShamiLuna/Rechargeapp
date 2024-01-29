import '../controller/manual_verification155_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManualVerification155Screen.
///
/// This class ensures that the ManualVerification155Controller is created when the
/// ManualVerification155Screen is first loaded.
class ManualVerification155Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualVerification155Controller());
  }
}
