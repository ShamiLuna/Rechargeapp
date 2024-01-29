import '../controller/fortyone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortyoneScreen.
///
/// This class ensures that the FortyoneController is created when the
/// FortyoneScreen is first loaded.
class FortyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortyoneController());
  }
}
