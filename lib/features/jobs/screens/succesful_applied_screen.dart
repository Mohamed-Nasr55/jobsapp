import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/navigation_screen.dart';

class SuccesfulAppliedScreen extends StatefulWidget {
  const SuccesfulAppliedScreen({super.key});

  @override
  State<SuccesfulAppliedScreen> createState() => _SuccesfulAppliedScreenState();
}

class _SuccesfulAppliedScreenState extends State<SuccesfulAppliedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(30.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h),
            Image.asset(Images.doneSuccessful, width: 255.w, height: 255.h),
            SizedBox(height: 15.h),

            Text(
              "Successful",
              style: Styles.poppinsBold22.copyWith(color: Colors.black),
            ),
            SizedBox(height: 15.h),

            Text(
              "You’ve successfully applied to Spotify UX Intern role.",
              style: Styles.poppinsMedium16.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 88.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                width: double.infinity,
                height: 50.h,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      side: BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => NavigationScreen()),
                    );
                  },
                  child: Text(
                    "Browse Jobs",
                    style: Styles.poppinsMedium16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
