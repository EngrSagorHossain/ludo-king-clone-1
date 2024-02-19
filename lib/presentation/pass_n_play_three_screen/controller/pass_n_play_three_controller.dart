import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_three_screen/models/pass_n_play_three_model.dart';

/// A controller class for the PassNPlayThreeScreen.
///
/// This class manages the state of the PassNPlayThreeScreen, including the
/// current passNPlayThreeModelObj
class PassNPlayThreeController extends GetxController {
  Rx<PassNPlayThreeModel> passNPlayThreeModelObj = PassNPlayThreeModel().obs;
}
