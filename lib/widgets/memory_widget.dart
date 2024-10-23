import 'package:diary/memory.dart';
import 'package:diary/widgets/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class MemoryWidget extends StatelessWidget {
  const MemoryWidget({
    super.key,
    required this.memory,
  });

  final Memory memory;
  static final formatter = DateFormat("d MMM yy");

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(memory.moodType.image),
        SizedBox(height: 16),
        Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
          decoration: BoxDecoration(
            color: memory.moodType.color,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.timer),
              SizedBox(width: 4),
              Text(formatter.format(memory.date)),
            ],
          ),
        ),
        SizedBox(height: 16),
        Text(
          memory.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(memory.message)
      ],
    ));
  }
}
