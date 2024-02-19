import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_screen/models/pass_n_play_model.dart';

/// A controller class for the PassNPlayScreen.
///
/// This class manages the state of the PassNPlayScreen, including the
/// current passNPlayModelObj
class PassNPlayController extends GetxController {
  Rx<PassNPlayModel> passNPlayModelObj = PassNPlayModel().obs;
}
