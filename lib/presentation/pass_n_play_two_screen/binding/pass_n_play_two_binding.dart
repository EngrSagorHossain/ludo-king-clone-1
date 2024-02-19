import '../controller/pass_n_play_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PassNPlayTwoScreen.
///
/// This class ensures that the PassNPlayTwoController is created when the
/// PassNPlayTwoScreen is first loaded.
class PassNPlayTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassNPlayTwoController());
  }
}
