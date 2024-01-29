import '../controller/transaction_succes_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionSuccesScreen.
///
/// This class ensures that the TransactionSuccesController is created when the
/// TransactionSuccesScreen is first loaded.
class TransactionSuccesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionSuccesController());
  }
}
