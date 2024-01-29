import '../controller/water359_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Water359Screen.
///
/// This class ensures that the Water359Controller is created when the
/// Water359Screen is first loaded.
class Water359Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Water359Controller());
  }
}
