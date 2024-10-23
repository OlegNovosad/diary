import 'dart:ui';

import 'package:diary/main.dart';

enum MoodType {
  sad('assets/icons/mood_0.svg', colorRed),
  angry('assets/icons/mood_1.svg', colorOrange),
  normal('assets/icons/mood_2.svg', colorYellow),
  good('assets/icons/mood_3.svg', colorBlue),
  happy('assets/icons/mood_4.svg', colorGreen);

  final String image;
  final Color color;

  const MoodType(this.image, this.color);
}
