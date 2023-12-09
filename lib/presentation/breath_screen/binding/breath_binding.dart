import '../controller/breath_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BreathScreen.
///
/// This class ensures that the BreathController is created when the
/// BreathScreen is first loaded.
class BreathBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BreathController());
  }
}
