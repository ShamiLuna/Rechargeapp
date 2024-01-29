import '../controller/thirty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtyScreen.
///
/// This class ensures that the ThirtyController is created when the
/// ThirtyScreen is first loaded.
class ThirtyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtyController());
  }
}
