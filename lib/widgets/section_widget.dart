import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const SectionWidget(
      {super.key,
      this.padding = const EdgeInsets.all(16),
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
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
