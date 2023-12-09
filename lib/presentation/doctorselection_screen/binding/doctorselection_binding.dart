import '../controller/doctorselection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DoctorselectionScreen.
///
/// This class ensures that the DoctorselectionController is created when the
/// DoctorselectionScreen is first loaded.
class DoctorselectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorselectionController());
  }
}
