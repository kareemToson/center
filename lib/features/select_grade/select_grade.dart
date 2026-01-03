import 'package:center/core/styles/colors_manager.dart';
import 'package:flutter/material.dart';

class SelectGradeScreen extends StatelessWidget {
  const SelectGradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFEEF4FF), ColorsManager.primaryColor],
          ),
        ),
        child: Placeholder(),
      ),
    );
  }
}
