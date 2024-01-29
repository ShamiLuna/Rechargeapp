import '../controller/frame_33752_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Frame33752Screen.
///
/// This class ensures that the Frame33752Controller is created when the
/// Frame33752Screen is first loaded.
class Frame33752Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame33752Controller());
  }
}
