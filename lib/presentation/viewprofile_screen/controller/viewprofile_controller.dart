import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/viewprofile_screen/models/viewprofile_model.dart';

/// A controller class for the ViewprofileScreen.
///
/// This class manages the state of the ViewprofileScreen, including the
/// current viewprofileModelObj
class ViewprofileController extends GetxController {
  Rx<ViewprofileModel> viewprofileModelObj = ViewprofileModel().obs;
}
