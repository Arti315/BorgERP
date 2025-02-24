import 'package:flutter/material.dart';

class PasswordVisibilityProvider with ChangeNotifier {
  bool _isPasswordVisible = false;

  bool get isPasswordVisible => _isPasswordVisible;

  bool _selectedValue = false;

  bool get selectedValue => _selectedValue;
  void toggleVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners(); // Notify listeners when visibility changes
  }

  void updateSelectedValue() {
    _selectedValue = !_selectedValue;
    notifyListeners(); // Notify listeners when visibility changes
  }
}
