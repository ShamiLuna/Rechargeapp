import '../controller/amount154_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Amount154Screen.
///
/// This class ensures that the Amount154Controller is created when the
/// Amount154Screen is first loaded.
class Amount154Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Amount154Controller());
  }
}
