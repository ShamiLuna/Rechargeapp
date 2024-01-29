import '../controller/payment_pinwsixtythree_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentPinwsixtythreeScreen.
///
/// This class ensures that the PaymentPinwsixtythreeController is created when the
/// PaymentPinwsixtythreeScreen is first loaded.
class PaymentPinwsixtythreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentPinwsixtythreeController());
  }
}
