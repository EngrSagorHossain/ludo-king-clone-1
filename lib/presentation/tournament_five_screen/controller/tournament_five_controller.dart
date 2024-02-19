import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/tournament_five_screen/models/tournament_five_model.dart';

/// A controller class for the TournamentFiveScreen.
///
/// This class manages the state of the TournamentFiveScreen, including the
/// current tournamentFiveModelObj
class TournamentFiveController extends GetxController {
  Rx<TournamentFiveModel> tournamentFiveModelObj = TournamentFiveModel().obs;
}
