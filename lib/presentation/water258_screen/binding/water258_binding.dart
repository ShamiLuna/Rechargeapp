import '../controller/water258_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Water258Screen.
///
/// This class ensures that the Water258Controller is created when the
/// Water258Screen is first loaded.
class Water258Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Water258Controller());
  }
}
