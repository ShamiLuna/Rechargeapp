import '../controller/thirtyfive_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtyfiveScreen.
///
/// This class ensures that the ThirtyfiveController is created when the
/// ThirtyfiveScreen is first loaded.
class ThirtyfiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtyfiveController());
  }
}
