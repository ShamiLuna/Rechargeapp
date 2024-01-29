import '../controller/fortynine_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortynineScreen.
///
/// This class ensures that the FortynineController is created when the
/// FortynineScreen is first loaded.
class FortynineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortynineController());
  }
}
