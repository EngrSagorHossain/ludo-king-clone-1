import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/tournament_two_screen/models/tournament_two_model.dart';

/// A controller class for the TournamentTwoScreen.
///
/// This class manages the state of the TournamentTwoScreen, including the
/// current tournamentTwoModelObj
class TournamentTwoController extends GetxController {
  Rx<TournamentTwoModel> tournamentTwoModelObj = TournamentTwoModel().obs;
}
