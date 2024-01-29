import '../controller/gas_billfiftythree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GasBillfiftythreeScreen.
///
/// This class ensures that the GasBillfiftythreeController is created when the
/// GasBillfiftythreeScreen is first loaded.
class GasBillfiftythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GasBillfiftythreeController());
  }
}
