import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/computer_game_screen/models/computer_game_model.dart';

/// A controller class for the ComputerGameScreen.
///
/// This class manages the state of the ComputerGameScreen, including the
/// current computerGameModelObj
class ComputerGameController extends GetxController {
  Rx<ComputerGameModel> computerGameModelObj = ComputerGameModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
