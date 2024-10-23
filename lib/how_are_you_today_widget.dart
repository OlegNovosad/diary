import 'package:diary/mood_type.dart';
import 'package:diary/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(MoodType.values.length, (index) {
                final moodType = MoodType.values[index];
                return Container(
                    height: 68,
                    width: 48,
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    decoration: BoxDecoration(
                      color: moodType.color,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(moodType.image));
              }),
            ],
          )
        ],
      ),
    );
  }
}
