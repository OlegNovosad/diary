import 'package:diary/button_widget.dart';
import 'package:diary/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final controller = PageController();

  static const steps = 4;

  static const titles = [
    "Diary with lock",
    "Mood graph",
    "Search diary",
    "Most secure"
  ];
  static const descriptions = [
    "Store your memories in a safe and secure way!",
    "We can show which part of the year kept you happy, sad or angry with cool graphs!",
    "Effortlessly search your diary to relive a particular memory!",
    "Save memmories with PIN, Face lock and intruder selfie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(left: 32, right: 32, top: 48, bottom: 64),
          child: Column(
            children: [
              SvgPicture.asset('assets/images/logo.svg', height: 40),
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    itemCount: steps,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Spacer(),
                          SvgPicture.asset(
                              'assets/images/onboarding_${index + 1}.svg'),
                          const Spacer(),
                          Text(titles[index],
                              style: const TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 16),
                          Text(descriptions[index],
                              style: const TextStyle(fontSize: 18)),
                        ],
                      );
                    }),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SmoothPageIndicator(
                      controller: controller,
                      count: steps,
                      effect: const WormEffect(
                          dotWidth: 8,
                          dotHeight: 8,
                          spacing: 12,
                          dotColor: Color(0xFFE5E5E5),
                          activeDotColor: Colors.black)),
                  ButtonWidget(
                      title: "Next",
                      onPressed: () {
                        if (controller.page == steps - 1) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const MainScreen()));
                          return;
                        }

                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      })
                ],
              )
            ],
          ),
        ));
  }
}
