import 'package:diary/mood_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoodTypeWidget extends StatelessWidget {
  const MoodTypeWidget({
    super.key,
    required this.moodType,
    required this.onSelected,
    this.selected = false,
  });

  final MoodType moodType;
  final ValueChanged<MoodType> onSelected;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(moodType);
      },
      child: Container(
          height: 68,
          width: 48,
          margin: EdgeInsets.symmetric(horizontal: 2),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          decoration: BoxDecoration(
            color: moodType.color,
            border: Border.all(color: Colors.black, width: selected ? 4 : 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SvgPicture.asset(moodType.image)),
    );
  }
}
