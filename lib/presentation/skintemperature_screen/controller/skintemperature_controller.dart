import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/skintemperature_screen/models/skintemperature_model.dart';

/// A controller class for the SkintemperatureScreen.
///
/// This class manages the state of the SkintemperatureScreen, including the
/// current skintemperatureModelObj
class SkintemperatureController extends GetxController {
  Rx<SkintemperatureModel> skintemperatureModelObj = SkintemperatureModel().obs;
}
