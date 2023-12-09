import 'package:mypuffinfuturecare/core/app_export.dart';
import 'package:mypuffinfuturecare/presentation/restingheartrate_screen/models/restingheartrate_model.dart';

/// A controller class for the RestingheartrateScreen.
///
/// This class manages the state of the RestingheartrateScreen, including the
/// current restingheartrateModelObj
class RestingheartrateController extends GetxController {
  Rx<RestingheartrateModel> restingheartrateModelObj =
      RestingheartrateModel().obs;
}
