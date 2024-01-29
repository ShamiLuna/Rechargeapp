import '../controller/thirtytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtytwoScreen.
///
/// This class ensures that the ThirtytwoController is created when the
/// ThirtytwoScreen is first loaded.
class ThirtytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtytwoController());
  }
}
