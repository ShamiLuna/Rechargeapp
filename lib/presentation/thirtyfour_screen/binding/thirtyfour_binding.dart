import '../controller/thirtyfour_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ThirtyfourScreen.
///
/// This class ensures that the ThirtyfourController is created when the
/// ThirtyfourScreen is first loaded.
class ThirtyfourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThirtyfourController());
  }
}
