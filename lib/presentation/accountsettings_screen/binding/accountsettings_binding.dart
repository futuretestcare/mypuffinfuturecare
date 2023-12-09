import '../controller/accountsettings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountsettingsScreen.
///
/// This class ensures that the AccountsettingsController is created when the
/// AccountsettingsScreen is first loaded.
class AccountsettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountsettingsController());
  }
}
