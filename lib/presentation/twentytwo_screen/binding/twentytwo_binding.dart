import '../controller/twentytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentytwoScreen.
///
/// This class ensures that the TwentytwoController is created when the
/// TwentytwoScreen is first loaded.
class TwentytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentytwoController());
  }
}
