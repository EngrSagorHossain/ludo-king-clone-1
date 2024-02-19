import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/tournament_game_screen/models/tournament_game_model.dart';

/// A controller class for the TournamentGameScreen.
///
/// This class manages the state of the TournamentGameScreen, including the
/// current tournamentGameModelObj
class TournamentGameController extends GetxController {
  Rx<TournamentGameModel> tournamentGameModelObj = TournamentGameModel().obs;
}
