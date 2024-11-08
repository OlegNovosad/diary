import 'package:diary/memory.dart';
import 'package:diary/screens/memory_details_screen.dart';
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => MemoryDetailsScreen(memory: memory)));
      },
      child: SectionWidget(
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(memory.moodType.image),
                  PopupMenuButton(
                      onSelected: (value) {
                        if (value == "edit") {
                          // TODO: Show edit screen
                        } else if (value == "share") {
                          // TODO: Show share menu
                        } else if (value == "delete") {
                          // TODO: Show delete confirmation dialog
                        }
                      },
                      menuPadding: EdgeInsets.zero,
                      color: Colors.white,
                      icon: const Icon(Icons.more_vert),
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                                value: "edit",
                                child: Row(
                                  children: [
                                    Icon(Icons.edit),
                                    SizedBox(width: 8),
                                    Text(
                                      "Edit",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                            const PopupMenuItem(
                                value: "share",
                                child: Row(
                                  children: [
                                    Icon(Icons.share),
                                    SizedBox(width: 8),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                            const PopupMenuItem(
                                value: "delete",
                                child: Row(
                                  children: [
                                    Icon(Icons.delete_forever),
                                    SizedBox(width: 8),
                                    Text(
                                      "Delete",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )),
                          ])
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
          )),
    );
  }
}
