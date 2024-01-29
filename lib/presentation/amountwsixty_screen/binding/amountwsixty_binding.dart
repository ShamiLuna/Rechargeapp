import '../controller/amountwsixty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AmountwsixtyScreen.
///
/// This class ensures that the AmountwsixtyController is created when the
/// AmountwsixtyScreen is first loaded.
class AmountwsixtyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AmountwsixtyController());
  }
}
