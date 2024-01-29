import 'package:faz/core/app_export.dart';
import 'package:faz/presentation/eleven_page/models/eleven_model.dart';

/// A controller class for the ElevenPage.
///
/// This class manages the state of the ElevenPage, including the
/// current elevenModelObj
class ElevenController extends GetxController {
  ElevenController(this.elevenModelObj);

  Rx<ElevenModel> elevenModelObj;
}
