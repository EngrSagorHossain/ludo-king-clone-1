import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/tournament_four_screen/models/tournament_four_model.dart';

/// A controller class for the TournamentFourScreen.
///
/// This class manages the state of the TournamentFourScreen, including the
/// current tournamentFourModelObj
class TournamentFourController extends GetxController {
  Rx<TournamentFourModel> tournamentFourModelObj = TournamentFourModel().obs;
}
