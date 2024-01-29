import '../controller/electric_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ElectricThreeScreen.
///
/// This class ensures that the ElectricThreeController is created when the
/// ElectricThreeScreen is first loaded.
class ElectricThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElectricThreeController());
  }
}
