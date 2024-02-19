import 'package:ludo_king_clone/core/app_export.dart';
import 'package:ludo_king_clone/presentation/profile_screen/models/profile_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController with CodeAutoFill {
  TextEditingController nameEditTextController = TextEditingController();

  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onClose() {
    super.onClose();
    nameEditTextController.dispose();
  }
}
