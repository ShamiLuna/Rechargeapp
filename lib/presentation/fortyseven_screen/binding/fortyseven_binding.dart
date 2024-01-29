import '../controller/fortyseven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FortysevenScreen.
///
/// This class ensures that the FortysevenController is created when the
/// FortysevenScreen is first loaded.
class FortysevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FortysevenController());
  }
}
