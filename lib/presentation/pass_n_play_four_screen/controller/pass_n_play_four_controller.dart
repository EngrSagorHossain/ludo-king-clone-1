import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_four_screen/models/pass_n_play_four_model.dart';

/// A controller class for the PassNPlayFourScreen.
///
/// This class manages the state of the PassNPlayFourScreen, including the
/// current passNPlayFourModelObj
class PassNPlayFourController extends GetxController {
  Rx<PassNPlayFourModel> passNPlayFourModelObj = PassNPlayFourModel().obs;
}
