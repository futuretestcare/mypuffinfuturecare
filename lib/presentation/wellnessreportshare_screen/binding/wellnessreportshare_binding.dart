import '../controller/wellnessreportshare_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WellnessreportshareScreen.
///
/// This class ensures that the WellnessreportshareController is created when the
/// WellnessreportshareScreen is first loaded.
class WellnessreportshareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WellnessreportshareController());
  }
}
