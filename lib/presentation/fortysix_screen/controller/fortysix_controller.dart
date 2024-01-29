import 'package:faz/core/app_export.dart';import 'package:faz/presentation/fortysix_screen/models/fortysix_model.dart';/// A controller class for the FortysixScreen.
///
/// This class manages the state of the FortysixScreen, including the
/// current fortysixModelObj
class FortysixController extends GetxController {Rx<FortysixModel> fortysixModelObj = FortysixModel().obs;

 }
