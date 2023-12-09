import '../controller/dataandstorage_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DataandstorageScreen.
///
/// This class ensures that the DataandstorageController is created when the
/// DataandstorageScreen is first loaded.
class DataandstorageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataandstorageController());
  }
}
