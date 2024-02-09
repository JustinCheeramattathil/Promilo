import 'package:flutter/material.dart';
///This provider class changes the value of the bottom navigation bar 
///It also manages the state of the each widget accordance with the index
class BottomNavBarProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int newIndex) {
    _selectedIndex = newIndex;
    notifyListeners();
  }
}