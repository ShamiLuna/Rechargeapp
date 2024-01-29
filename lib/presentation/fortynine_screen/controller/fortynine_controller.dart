import 'package:faz/core/app_export.dart';import 'package:faz/presentation/fortynine_screen/models/fortynine_model.dart';/// A controller class for the FortynineScreen.
///
/// This class manages the state of the FortynineScreen, including the
/// current fortynineModelObj
class FortynineController extends GetxController {Rx<FortynineModel> fortynineModelObj = FortynineModel().obs;

 }
