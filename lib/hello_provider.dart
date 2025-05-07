import 'package:flutter/material.dart';

class HelloProvider extends ChangeNotifier {
  String _name = '';

  String get name => _name;

  void changeName() {
    name;
    notifyListeners();
  }
}
