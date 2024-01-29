import '../controller/thirtythree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtythreeScreen.
///
/// This class ensures that the ThirtythreeController is created when the
/// ThirtythreeScreen is first loaded.
class ThirtythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtythreeController());
  }
}
