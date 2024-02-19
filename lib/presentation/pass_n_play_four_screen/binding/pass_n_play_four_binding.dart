import '../controller/pass_n_play_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PassNPlayFourScreen.
///
/// This class ensures that the PassNPlayFourController is created when the
/// PassNPlayFourScreen is first loaded.
class PassNPlayFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassNPlayFourController());
  }
}
