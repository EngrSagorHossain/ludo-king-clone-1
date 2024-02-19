import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/exit_three_screen/models/exit_three_model.dart';

/// A controller class for the ExitThreeScreen.
///
/// This class manages the state of the ExitThreeScreen, including the
/// current exitThreeModelObj
class ExitThreeController extends GetxController {
  Rx<ExitThreeModel> exitThreeModelObj = ExitThreeModel().obs;
}
