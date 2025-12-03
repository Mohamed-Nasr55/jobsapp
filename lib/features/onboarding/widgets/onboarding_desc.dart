import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/strings.dart';

class OnBoardingDesc extends StatelessWidget {
  const OnBoardingDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Strings.onBoardingDescription,
      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    );
  }
}

