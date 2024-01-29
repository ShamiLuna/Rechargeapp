import '../controller/eleven_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ElevenTabContainerScreen.
///
/// This class ensures that the ElevenTabContainerController is created when the
/// ElevenTabContainerScreen is first loaded.
class ElevenTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElevenTabContainerController());
  }
}
