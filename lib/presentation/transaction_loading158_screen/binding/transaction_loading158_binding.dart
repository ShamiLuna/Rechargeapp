import '../controller/transaction_loading158_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionLoading158Screen.
///
/// This class ensures that the TransactionLoading158Controller is created when the
/// TransactionLoading158Screen is first loaded.
class TransactionLoading158Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionLoading158Controller());
  }
}
