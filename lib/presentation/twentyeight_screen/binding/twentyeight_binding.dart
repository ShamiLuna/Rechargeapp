import '../controller/twentyeight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentyeightScreen.
///
/// This class ensures that the TwentyeightController is created when the
/// TwentyeightScreen is first loaded.
class TwentyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentyeightController());
  }
}
