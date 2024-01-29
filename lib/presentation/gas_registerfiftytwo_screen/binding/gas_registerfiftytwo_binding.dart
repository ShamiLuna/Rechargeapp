import '../controller/gas_registerfiftytwo_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GasRegisterfiftytwoScreen.
///
/// This class ensures that the GasRegisterfiftytwoController is created when the
/// GasRegisterfiftytwoScreen is first loaded.
class GasRegisterfiftytwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GasRegisterfiftytwoController());
  }
}
