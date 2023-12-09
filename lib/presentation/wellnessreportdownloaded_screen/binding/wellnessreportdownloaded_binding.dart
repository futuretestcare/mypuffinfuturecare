import '../controller/wellnessreportdownloaded_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WellnessreportdownloadedScreen.
///
/// This class ensures that the WellnessreportdownloadedController is created when the
/// WellnessreportdownloadedScreen is first loaded.
class WellnessreportdownloadedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WellnessreportdownloadedController());
  }
}
