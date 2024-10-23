import 'package:diary/mood_type.dart';

class Memory {
  final String title;
  final String message;
  final DateTime date;
  final MoodType moodType;

  Memory(
      {required this.title,
      required this.message,
      required this.date,
      required this.moodType});
}
