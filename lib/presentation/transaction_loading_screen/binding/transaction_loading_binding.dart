import '../controller/transaction_loading_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionLoadingScreen.
///
/// This class ensures that the TransactionLoadingController is created when the
/// TransactionLoadingScreen is first loaded.
class TransactionLoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionLoadingController());
  }
}
