import 'package:diary/section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionWidget(
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
                children: [
                  ...List.generate(5, (index) {
                    return SvgPicture.asset('assets/icons/mood_$index.svg');
                  })
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
