import '../controller/thirtyone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtyoneScreen.
///
/// This class ensures that the ThirtyoneController is created when the
/// ThirtyoneScreen is first loaded.
class ThirtyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtyoneController());
  }
}
