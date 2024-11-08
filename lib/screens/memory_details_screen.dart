import 'package:diary/memory.dart';
import 'package:flutter/material.dart';

class MemoryDetailsScreen extends StatelessWidget {
  final Memory memory;
  const MemoryDetailsScreen({super.key, required this.memory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Placeholder());
  }
}
