import '../controller/skintemperature_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SkintemperatureScreen.
///
/// This class ensures that the SkintemperatureController is created when the
/// SkintemperatureScreen is first loaded.
class SkintemperatureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SkintemperatureController());
  }
}
