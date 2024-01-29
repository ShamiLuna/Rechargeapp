import '../controller/manual_verificationg_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManualVerificationgScreen.
///
/// This class ensures that the ManualVerificationgController is created when the
/// ManualVerificationgScreen is first loaded.
class ManualVerificationgBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualVerificationgController());
  }
}
