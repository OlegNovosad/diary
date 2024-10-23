import 'package:diary/main.dart';
import 'package:diary/memory.dart';
import 'package:diary/memory_provider.dart';
import 'package:diary/widgets/how_are_you_today_widget.dart';
import 'package:diary/widgets/memory_widget.dart';
import 'package:diary/widgets/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MemoryProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HowAreYouTodayWidget(),
        SizedBox(height: 32),
        if (provider.memories.isNotEmpty)
          MemoryWidget(memory: provider.memories.first)
      ],
    );
  }
}
