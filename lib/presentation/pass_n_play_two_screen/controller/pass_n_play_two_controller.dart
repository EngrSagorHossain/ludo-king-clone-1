import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_two_screen/models/pass_n_play_two_model.dart';

/// A controller class for the PassNPlayTwoScreen.
///
/// This class manages the state of the PassNPlayTwoScreen, including the
/// current passNPlayTwoModelObj
class PassNPlayTwoController extends GetxController {
  Rx<PassNPlayTwoModel> passNPlayTwoModelObj = PassNPlayTwoModel().obs;
}
