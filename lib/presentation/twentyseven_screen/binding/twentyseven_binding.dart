import '../controller/twentyseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentysevenScreen.
///
/// This class ensures that the TwentysevenController is created when the
/// TwentysevenScreen is first loaded.
class TwentysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentysevenController());
  }
}
