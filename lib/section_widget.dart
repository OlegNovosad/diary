import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Widget child;
  const SectionWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF1D3A58).withOpacity(0.05),
              offset: const Offset(0, 20),
              blurRadius: 20,
            )
          ]),
      child: child,
    );
  }
}
