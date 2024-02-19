import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/exit_two_screen/models/exit_two_model.dart';

/// A controller class for the ExitTwoScreen.
///
/// This class manages the state of the ExitTwoScreen, including the
/// current exitTwoModelObj
class ExitTwoController extends GetxController {
  Rx<ExitTwoModel> exitTwoModelObj = ExitTwoModel().obs;
}
