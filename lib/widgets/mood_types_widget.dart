import 'package:diary/mood_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoodTypesWidget extends StatelessWidget {
  const MoodTypesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(MoodType.values.length, (index) {
          final moodType = MoodType.values[index];
          return Container(
              height: 68,
              width: 48,
              margin: EdgeInsets.symmetric(horizontal: 2),
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              decoration: BoxDecoration(
                color: moodType.color,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SvgPicture.asset(moodType.image));
        }),
      ],
    );
  }
}
