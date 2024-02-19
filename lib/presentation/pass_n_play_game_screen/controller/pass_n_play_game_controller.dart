import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_game_screen/models/pass_n_play_game_model.dart';

/// A controller class for the PassNPlayGameScreen.
///
/// This class manages the state of the PassNPlayGameScreen, including the
/// current passNPlayGameModelObj
class PassNPlayGameController extends GetxController {
  Rx<PassNPlayGameModel> passNPlayGameModelObj = PassNPlayGameModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
