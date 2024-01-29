import '../controller/fortythree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortythreeScreen.
///
/// This class ensures that the FortythreeController is created when the
/// FortythreeScreen is first loaded.
class FortythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortythreeController());
  }
}
