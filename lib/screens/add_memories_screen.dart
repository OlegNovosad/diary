import 'package:diary/widgets/button_widget.dart';
import 'package:diary/widgets/mood_types_widget.dart';
import 'package:diary/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class AddMemoriesScreen extends StatefulWidget {
  const AddMemoriesScreen({super.key});

  @override
  State<AddMemoriesScreen> createState() => _AddMemoriesScreenState();
}

class _AddMemoriesScreenState extends State<AddMemoriesScreen> {
  final titleController = TextEditingController();
  final messageController = TextEditingController();

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
                    ),
                  ],
                )),
            SizedBox(height: 16),
            SectionWidget(child: MoodTypesWidget(
              onSelected: (type) {
                // TODO: Add handling
              },
            )),
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
