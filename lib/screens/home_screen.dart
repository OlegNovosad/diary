import 'package:diary/memories_provider.dart';
import 'package:diary/memory_provider.dart';
import 'package:diary/screens/all_memories_screen.dart';
import 'package:diary/widgets/how_are_you_today_widget.dart';
import 'package:diary/widgets/memory_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MemoriesProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const HowAreYouTodayWidget(),
        const SizedBox(height: 32),
        if (provider.memories.isNotEmpty) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recently added",
                style: TextStyle(
                  color: Color(0xFF5F5F5F),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  overlayColor: const Color(0xFF5F5F5F),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const AllMemoriesScreen()),
                  );
                },
                child: const Text("View All",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ],
          ),
          ChangeNotifierProvider(
            create: (_) => MemoryProvider(provider.recent()),
            child: const MemoryWidget())
        ]
      ],
    );
  }
}
