import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/eight_screen/models/eight_model.dart';

/// A controller class for the EightScreen.
///
/// This class manages the state of the EightScreen, including the
/// current eightModelObj
class EightController extends GetxController {
  Rx<EightModel> eightModelObj = EightModel().obs;
}
