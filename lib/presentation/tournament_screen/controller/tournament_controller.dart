import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/tournament_screen/models/tournament_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TournamentScreen.
///
/// This class manages the state of the TournamentScreen, including the
/// current tournamentModelObj
class TournamentController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<TournamentModel> tournamentModelObj = TournamentModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    passwordController.dispose();
  }
}
