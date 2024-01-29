import '../controller/thirtysix_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtysixScreen.
///
/// This class ensures that the ThirtysixController is created when the
/// ThirtysixScreen is first loaded.
class ThirtysixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtysixController());
  }
}
