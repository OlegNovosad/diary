import 'package:diary/memory.dart';
import 'package:flutter/material.dart';

class MemoryProvider extends ChangeNotifier {
  final List<Memory> _memories = [];
  List<Memory> get memories => _memories;

  void add(Memory value) {
    _memories.add(value);
    notifyListeners();
  }
}
