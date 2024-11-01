import 'package:diary/mood_type.dart';
import 'package:diary/widgets/mood_type_widget.dart';
import 'package:flutter/material.dart';

class MoodTypesWidget extends StatefulWidget {
  const MoodTypesWidget({
    super.key,
    required this.onSelected,
  });

  final ValueChanged<MoodType> onSelected;

  @override
  State<MoodTypesWidget> createState() => _MoodTypesWidgetState();
}

class _MoodTypesWidgetState extends State<MoodTypesWidget> {
  MoodType? selectedMoodType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(MoodType.values.length, (index) {
          final moodType = MoodType.values[index];
          return MoodTypeWidget(
            moodType: moodType,
            selected: moodType == selectedMoodType,
            onSelected: (type) {
              if (type != selectedMoodType) {
                setState(() {
                  selectedMoodType = type;
                });
              } else {
                setState(() {
                  selectedMoodType = null;
                });
              }
              widget.onSelected(type);
            },
          );
        }),
      ],
    );
  }
}
