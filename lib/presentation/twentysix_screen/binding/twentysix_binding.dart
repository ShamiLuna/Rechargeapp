import '../controller/twentysix_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentysixScreen.
///
/// This class ensures that the TwentysixController is created when the
/// TwentysixScreen is first loaded.
class TwentysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentysixController());
  }
}
