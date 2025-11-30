import 'package:flutter/material.dart';
import 'package:jobsapp/core/helper/strings.dart';
import 'package:jobsapp/core/theme/app_colors.dart';

class OnBoardingTitle extends StatelessWidget {
  const OnBoardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Text(
        Strings.onboardingTitle,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
