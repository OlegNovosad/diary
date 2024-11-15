import 'package:diary/memories_provider.dart';
import 'package:diary/memory_provider.dart';
import 'package:diary/widgets/memory_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllMemoriesScreen extends StatelessWidget {
  const AllMemoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<MemoriesProvider>();
    final memories = provider.memories;

    return Scaffold(
      appBar: AppBar(
        title: const Text("All memories"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: memories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: ChangeNotifierProvider(
                  create: (_) => MemoryProvider(memories[index]),
                  child: const MemoryWidget()),
            );
          }),
    );
  }
}
