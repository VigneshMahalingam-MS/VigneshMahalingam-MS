import 'package:flutter/material.dart';

class ProviderScreen extends ChangeNotifier {
  int count = 0;
  void increament() {
    count++;
    notifyListeners();
  }

  void deccreament() {
    count--;
    notifyListeners();
  }
}
