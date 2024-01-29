import '../controller/fortyfive_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortyfiveScreen.
///
/// This class ensures that the FortyfiveController is created when the
/// FortyfiveScreen is first loaded.
class FortyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortyfiveController());
  }
}
