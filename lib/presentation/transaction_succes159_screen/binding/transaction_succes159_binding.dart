import '../controller/transaction_succes159_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionSucces159Screen.
///
/// This class ensures that the TransactionSucces159Controller is created when the
/// TransactionSucces159Screen is first loaded.
class TransactionSucces159Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionSucces159Controller());
  }
}
