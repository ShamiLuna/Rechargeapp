import '../controller/frame_33712_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Frame33712Screen.
///
/// This class ensures that the Frame33712Controller is created when the
/// Frame33712Screen is first loaded.
class Frame33712Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame33712Controller());
  }
}
