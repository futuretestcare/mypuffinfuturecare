import '../controller/changelogindetails_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChangelogindetailsScreen.
///
/// This class ensures that the ChangelogindetailsController is created when the
/// ChangelogindetailsScreen is first loaded.
class ChangelogindetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangelogindetailsController());
  }
}
