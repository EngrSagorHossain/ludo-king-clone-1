import '../controller/pass_n_play_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PassNPlayThreeScreen.
///
/// This class ensures that the PassNPlayThreeController is created when the
/// PassNPlayThreeScreen is first loaded.
class PassNPlayThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassNPlayThreeController());
  }
}
