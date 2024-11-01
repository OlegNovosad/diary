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
        padding: const EdgeInsets.only(left: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(memory.moodType.image),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                )
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              decoration: BoxDecoration(
                color: memory.moodType.color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.timer),
                  const SizedBox(width: 4),
                  Text(formatter.format(memory.date)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              memory.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(memory.message)
          ],
        ));
  }
}
