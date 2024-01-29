import '../controller/twentyfive_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentyfiveScreen.
///
/// This class ensures that the TwentyfiveController is created when the
/// TwentyfiveScreen is first loaded.
class TwentyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentyfiveController());
  }
}
