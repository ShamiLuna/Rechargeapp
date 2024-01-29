import '../controller/framef_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FramefScreen.
///
/// This class ensures that the FramefController is created when the
/// FramefScreen is first loaded.
class FramefBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FramefController());
  }
}
