import 'package:diary/widgets/mood_types_widget.dart';
import 'package:diary/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class HowAreYouTodayWidget extends StatelessWidget {
  const HowAreYouTodayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      child: Column(
        children: [
          Text(
            "Hello, Oleg Novosad",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF5F5F5F),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "How are you today?",
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF080808),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          MoodTypesWidget()
        ],
      ),
    );
  }
}
