import '../controller/viewprofile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewprofileScreen.
///
/// This class ensures that the ViewprofileController is created when the
/// ViewprofileScreen is first loaded.
class ViewprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewprofileController());
  }
}
