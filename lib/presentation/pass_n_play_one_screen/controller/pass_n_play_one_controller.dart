import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/pass_n_play_one_screen/models/pass_n_play_one_model.dart';

/// A controller class for the PassNPlayOneScreen.
///
/// This class manages the state of the PassNPlayOneScreen, including the
/// current passNPlayOneModelObj
class PassNPlayOneController extends GetxController {
  Rx<PassNPlayOneModel> passNPlayOneModelObj = PassNPlayOneModel().obs;
}
