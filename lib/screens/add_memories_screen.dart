import 'package:diary/memory.dart';
import 'package:diary/memory_provider.dart';
import 'package:diary/mood_type.dart';
import 'package:diary/widgets/button_widget.dart';
import 'package:diary/widgets/mood_types_widget.dart';
import 'package:diary/widgets/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddMemoriesScreen extends StatefulWidget {
  const AddMemoriesScreen({super.key});

  @override
  State<AddMemoriesScreen> createState() => _AddMemoriesScreenState();
}

class _AddMemoriesScreenState extends State<AddMemoriesScreen> {
  final titleController = TextEditingController();
  final messageController = TextEditingController();
  MoodType? selectedMoodType;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<MemoryProvider>();

    var enabled = false;

    if (titleController.text.isNotEmpty &&
        messageController.text.isNotEmpty &&
        selectedMoodType != null) {
      enabled = true;
    }

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
            SectionWidget(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    TextField(
                      controller: titleController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        border: InputBorder.none,
                        hintText: "Headline",
                        hintStyle: TextStyle(color: Color(0xFFD4D4D4)),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    Divider(),
                    TextField(
                      controller: messageController,
                      cursorColor: Colors.black,
                      maxLines: 5,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        border: InputBorder.none,
                        hintText: "Start typing...",
                        hintStyle: TextStyle(color: Color(0xFFD4D4D4)),
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ],
                )),
            SizedBox(height: 16),
            SectionWidget(child: MoodTypesWidget(
              onSelected: (type) {
                setState(() {
                  selectedMoodType = type == selectedMoodType ? null : type;
                });
              },
            )),
            SizedBox(height: 16),
            ButtonWidget(
              title: "Save",
              onPressed: enabled
                  ? () {
                      final memory = Memory(
                          title: titleController.text,
                          message: messageController.text,
                          date: DateTime.now(),
                          moodType: selectedMoodType!);

                      provider.add(memory);
                      Navigator.of(context).pop();
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
