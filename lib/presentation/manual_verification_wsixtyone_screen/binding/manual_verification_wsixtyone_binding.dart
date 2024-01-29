import '../controller/manual_verification_wsixtyone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManualVerificationWsixtyoneScreen.
///
/// This class ensures that the ManualVerificationWsixtyoneController is created when the
/// ManualVerificationWsixtyoneScreen is first loaded.
class ManualVerificationWsixtyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManualVerificationWsixtyoneController());
  }
}
