import '../controller/tournament_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentTwoScreen.
///
/// This class ensures that the TournamentTwoController is created when the
/// TournamentTwoScreen is first loaded.
class TournamentTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentTwoController());
  }
}
