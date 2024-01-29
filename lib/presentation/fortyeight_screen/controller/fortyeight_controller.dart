import 'package:faz/core/app_export.dart';import 'package:faz/presentation/fortyeight_screen/models/fortyeight_model.dart';/// A controller class for the FortyeightScreen.
///
/// This class manages the state of the FortyeightScreen, including the
/// current fortyeightModelObj
class FortyeightController extends GetxController {Rx<FortyeightModel> fortyeightModelObj = FortyeightModel().obs;

 }
