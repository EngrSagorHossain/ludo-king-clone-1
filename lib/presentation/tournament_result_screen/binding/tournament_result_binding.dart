import '../controller/tournament_result_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentResultScreen.
///
/// This class ensures that the TournamentResultController is created when the
/// TournamentResultScreen is first loaded.
class TournamentResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentResultController());
  }
}
