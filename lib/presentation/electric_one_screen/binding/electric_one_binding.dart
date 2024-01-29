import '../controller/electric_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ElectricOneScreen.
///
/// This class ensures that the ElectricOneController is created when the
/// ElectricOneScreen is first loaded.
class ElectricOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElectricOneController());
  }
}
