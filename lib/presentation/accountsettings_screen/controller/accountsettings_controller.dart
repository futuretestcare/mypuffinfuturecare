import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/accountsettings_screen/models/accountsettings_model.dart';

/// A controller class for the AccountsettingsScreen.
///
/// This class manages the state of the AccountsettingsScreen, including the
/// current accountsettingsModelObj
class AccountsettingsController extends GetxController {
  Rx<AccountsettingsModel> accountsettingsModelObj = AccountsettingsModel().obs;
}
