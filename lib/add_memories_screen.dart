import 'package:diary/button_widget.dart';
import 'package:diary/section_widget.dart';
import 'package:flutter/material.dart';

class AddMemoriesScreen extends StatefulWidget {
  const AddMemoriesScreen({super.key});

  @override
  State<AddMemoriesScreen> createState() => _AddMemoriesScreenState();
}

class _AddMemoriesScreenState extends State<AddMemoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add memories"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SectionWidget(child: Container()),
            SizedBox(height: 16),
            SectionWidget(child: Container()),
            SizedBox(height: 16),
            ButtonWidget(
              title: "Save",
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
