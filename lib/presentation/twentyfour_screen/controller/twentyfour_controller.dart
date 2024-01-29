import 'package:faz/core/app_export.dart';import 'package:faz/presentation/twentyfour_screen/models/twentyfour_model.dart';/// A controller class for the TwentyfourScreen.
///
/// This class manages the state of the TwentyfourScreen, including the
/// current twentyfourModelObj
class TwentyfourController extends GetxController {Rx<TwentyfourModel> twentyfourModelObj = TwentyfourModel().obs;

@override void onReady() { Get.offNamed(AppRoutes.twentyfiveScreen,); } 
 }
