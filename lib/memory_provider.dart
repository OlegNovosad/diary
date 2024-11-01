import 'package:diary/memory.dart';
import 'package:diary/mood_type.dart';
import 'package:flutter/material.dart';

class MemoryProvider extends ChangeNotifier {
  final List<Memory> _memories = [
    Memory(
        title: "Сьогодні я класно поснідав!",
        message: "Сосиски, яйця, канапки. І чай!",
        date: DateTime.now(),
        moodType: MoodType.happy),
    Memory(
        title: "Почав дивитись новий серіал",
        message: "Називається The Lincoln Lawyer, мені подобається",
        date: DateTime.now().subtract(const Duration(hours: 12)),
        moodType: MoodType.good),
  ];
  List<Memory> get memories => _memories;

  bool _onboardingFinished = false;
  bool get onboardingFinished => _onboardingFinished;

  void setOnboardingFinished() {
    _onboardingFinished = true;
    notifyListeners();
  }

  void add(Memory value) {
    _memories.add(value);
    notifyListeners();
  }

  Memory recent() {
    _memories.sort((a, b) {
      if (a.date.isAfter(b.date)) {
        return 1;
      } else {
        return -1;
      }
    });

    return _memories.last;
  }
}
