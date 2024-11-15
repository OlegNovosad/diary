import 'package:diary/memory_provider.dart';
import 'package:diary/screens/memory_details_screen.dart';
import 'package:diary/widgets/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class MemoryWidget extends StatelessWidget {
  const MemoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MemoryProvider>();
    final memory = provider.memory;

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
                      onSelected: provider.onActionSelected,
                      menuPadding: EdgeInsets.zero,
                      color: Colors.white,
                      icon: const Icon(Icons.more_vert),
                      itemBuilder: (context) => [
                            ...MemoryAction.values.map((action) {
                              return PopupMenuItem(
                                  value: action,
                                  child: Row(
                                    children: [
                                      Icon(action.icon),
                                      const SizedBox(width: 8),
                                      Text(
                                        action.title,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ));
                            })
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
                    Text(provider.formattedDate),
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
