import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    if (_count < 0) {
      _count = 0;
    }
    notifyListeners();
  }

  void navigateToAddPage(BuildContext context, Widget page) {
    final route = MaterialPageRoute(builder: (context) => page);
    Navigator.push(context, route);
  }
}
