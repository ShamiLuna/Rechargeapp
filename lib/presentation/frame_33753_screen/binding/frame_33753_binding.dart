import '../controller/frame_33753_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Frame33753Screen.
///
/// This class ensures that the Frame33753Controller is created when the
/// Frame33753Screen is first loaded.
class Frame33753Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame33753Controller());
  }
}
