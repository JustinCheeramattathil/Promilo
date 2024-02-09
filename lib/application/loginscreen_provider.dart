import 'package:flutter/material.dart';
///In this provider class we manage the enabled state and disabled state of login button according 
///with the  textfield values in the login screen
class LoginScreenProvider extends ChangeNotifier {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  bool get isButtonEnabled => _isButtonEnabled;

  void updateButtonState() {
///if the username field and password field has texts the button attains enabled state
    _isButtonEnabled = usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
    notifyListeners();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}