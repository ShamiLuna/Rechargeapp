import '../controller/gas_homefiftyone_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GasHomefiftyoneScreen.
///
/// This class ensures that the GasHomefiftyoneController is created when the
/// GasHomefiftyoneScreen is first loaded.
class GasHomefiftyoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GasHomefiftyoneController());
  }
}
