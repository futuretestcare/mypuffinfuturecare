import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/changepasswordsuccess_screen/models/changepasswordsuccess_model.dart';

/// A controller class for the ChangepasswordsuccessScreen.
///
/// This class manages the state of the ChangepasswordsuccessScreen, including the
/// current changepasswordsuccessModelObj
class ChangepasswordsuccessController extends GetxController {
  Rx<ChangepasswordsuccessModel> changepasswordsuccessModelObj =
      ChangepasswordsuccessModel().obs;
}
