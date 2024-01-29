import '../controller/fortysix_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortysixScreen.
///
/// This class ensures that the FortysixController is created when the
/// FortysixScreen is first loaded.
class FortysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortysixController());
  }
}
