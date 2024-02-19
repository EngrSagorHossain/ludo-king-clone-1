import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/computer_screen/models/computer_model.dart';

/// A controller class for the ComputerScreen.
///
/// This class manages the state of the ComputerScreen, including the
/// current computerModelObj
class ComputerController extends GetxController {
  Rx<ComputerModel> computerModelObj = ComputerModel().obs;
}
