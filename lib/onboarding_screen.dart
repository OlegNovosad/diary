import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = PageController();

  static const titles = [
    "Diary with lock",
  ];
  static const descriptions = [
    "Store your memories in a safe and secure way!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Spacer(),
                      SvgPicture.asset('assets/images/onboarding_${index+1}.svg'),
                      Spacer(),
                      Text(titles[index], style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                      Text(descriptions[index], style: TextStyle(fontSize: 18)),
                    ],
                  );
                }
              ),
            ),
            SmoothPageIndicator(controller: controller, count: 4)
          ],
        ),
      )
    );
  }
}