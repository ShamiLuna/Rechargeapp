import '../controller/fortytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortytwoScreen.
///
/// This class ensures that the FortytwoController is created when the
/// FortytwoScreen is first loaded.
class FortytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortytwoController());
  }
}
