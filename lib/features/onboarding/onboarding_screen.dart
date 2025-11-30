import 'package:flutter/material.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/helper/strings.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/features/onboarding/widgets/onboarding_buttons_row.dart';
import 'package:jobsapp/features/onboarding/widgets/onboarding_desc.dart';
import 'package:jobsapp/features/onboarding/widgets/onboarding_title.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.continueAsAGuest,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Image.asset(Images.onboardingImage),
            OnBoardingTitle(),

            SizedBox(height: 20),
            OnBoardingDesc(),
            SizedBox(height: 40),

            OnBoardingButtonsRow(),
          ],
        ),
      ),
    );
  }
}






