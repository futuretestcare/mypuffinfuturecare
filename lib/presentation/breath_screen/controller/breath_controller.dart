import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/breath_screen/models/breath_model.dart';

/// A controller class for the BreathScreen.
///
/// This class manages the state of the BreathScreen, including the
/// current breathModelObj
class BreathController extends GetxController {
  Rx<BreathModel> breathModelObj = BreathModel().obs;
}
