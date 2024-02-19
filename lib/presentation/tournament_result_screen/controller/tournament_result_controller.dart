import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/tournament_result_screen/models/tournament_result_model.dart';

/// A controller class for the TournamentResultScreen.
///
/// This class manages the state of the TournamentResultScreen, including the
/// current tournamentResultModelObj
class TournamentResultController extends GetxController {
  Rx<TournamentResultModel> tournamentResultModelObj =
      TournamentResultModel().obs;
}
