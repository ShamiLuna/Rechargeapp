import '../controller/frame_33729_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Frame33729Screen.
///
/// This class ensures that the Frame33729Controller is created when the
/// Frame33729Screen is first loaded.
class Frame33729Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame33729Controller());
  }
}
