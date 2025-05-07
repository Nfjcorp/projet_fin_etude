import 'package:flutter/material.dart';

class HelloProvider extends ChangeNotifier {
  final String _name = '';

  String get name => _name;

  void changeName() {
    name;
    notifyListeners();
  }
}
