import '../controller/fortyeight_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortyeightScreen.
///
/// This class ensures that the FortyeightController is created when the
/// FortyeightScreen is first loaded.
class FortyeightBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortyeightController());
  }
}
