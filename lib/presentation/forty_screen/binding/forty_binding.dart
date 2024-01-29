import '../controller/forty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortyScreen.
///
/// This class ensures that the FortyController is created when the
/// FortyScreen is first loaded.
class FortyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortyController());
  }
}
