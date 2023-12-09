import '../controller/wellnessreport_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WellnessreportScreen.
///
/// This class ensures that the WellnessreportController is created when the
/// WellnessreportScreen is first loaded.
class WellnessreportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WellnessreportController());
  }
}
