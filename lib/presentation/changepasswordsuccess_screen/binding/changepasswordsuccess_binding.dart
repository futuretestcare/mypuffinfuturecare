import '../controller/changepasswordsuccess_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangepasswordsuccessScreen.
///
/// This class ensures that the ChangepasswordsuccessController is created when the
/// ChangepasswordsuccessScreen is first loaded.
class ChangepasswordsuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangepasswordsuccessController());
  }
}
