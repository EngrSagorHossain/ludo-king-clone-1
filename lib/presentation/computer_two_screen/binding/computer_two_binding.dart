import '../controller/computer_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ComputerTwoScreen.
///
/// This class ensures that the ComputerTwoController is created when the
/// ComputerTwoScreen is first loaded.
class ComputerTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerTwoController());
  }
}
