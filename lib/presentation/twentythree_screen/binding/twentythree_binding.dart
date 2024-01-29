import '../controller/twentythree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentythreeScreen.
///
/// This class ensures that the TwentythreeController is created when the
/// TwentythreeScreen is first loaded.
class TwentythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentythreeController());
  }
}
