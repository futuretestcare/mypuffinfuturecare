import '../controller/changepassword_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangepasswordScreen.
///
/// This class ensures that the ChangepasswordController is created when the
/// ChangepasswordScreen is first loaded.
class ChangepasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangepasswordController());
  }
}
