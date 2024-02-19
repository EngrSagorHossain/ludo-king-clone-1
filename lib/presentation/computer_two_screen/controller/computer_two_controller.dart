import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/computer_two_screen/models/computer_two_model.dart';

/// A controller class for the ComputerTwoScreen.
///
/// This class manages the state of the ComputerTwoScreen, including the
/// current computerTwoModelObj
class ComputerTwoController extends GetxController {
  Rx<ComputerTwoModel> computerTwoModelObj = ComputerTwoModel().obs;

  Rx<String> radioGroup = "".obs;
}
