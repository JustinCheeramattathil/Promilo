import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;
  void setCurrentPage(int page) {
    _currentIndex = page;
    notifyListeners();
  }
}
