import 'package:diary/add_memories_screen.dart';
import 'package:diary/main_screen.dart';
import 'package:diary/onboarding_screen.dart';
import 'package:diary/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const colorRed = Color(0xFFFFB6A6);
const colorOrange = Color(0xFFFFCF55);
const colorYellow = Color(0xFFFFF731);
const colorBlue = Color(0xFF00FFFF);
const colorGreen = Color(0xFF29E259);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFF3F3F3),
            ),
            scaffoldBackgroundColor: const Color(0xFFF3F3F3),
            fontFamily: GoogleFonts.manrope().fontFamily),
        home: AddMemoriesScreen());
  }
}
