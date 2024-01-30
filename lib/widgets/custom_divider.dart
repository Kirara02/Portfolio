import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 180,
      decoration: const BoxDecoration(gradient: AppColors.customGradient),
    );
  }
}
