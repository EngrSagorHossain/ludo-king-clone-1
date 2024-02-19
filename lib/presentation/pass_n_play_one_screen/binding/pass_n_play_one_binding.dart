import '../controller/pass_n_play_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PassNPlayOneScreen.
///
/// This class ensures that the PassNPlayOneController is created when the
/// PassNPlayOneScreen is first loaded.
class PassNPlayOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassNPlayOneController());
  }
}
