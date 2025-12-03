import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class featureJobRow extends StatelessWidget {
  const featureJobRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 156.w,
          height: 164.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            spacing: 7,
            children: [
              Image.asset(Images.jrExperience, width: 55.w, height: 55.h),
              Text(
                "Jr Exective",
                style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
              ),

              Text("Pintrest", style: Styles.poppins12),
              Text(
                "\$ 96,000/y",
                style: Styles.poppins12.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          width: 156.w,
          height: 164.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
          ),
          child: Column(
            spacing: 7,
            children: [
              SizedBox(height: 5.h),
              Image.asset(Images.spotifyImg, width: 40.w, height: 40.h),
              Text(
                "Sr Developer",
                style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
              ),

              Text("Spotify", style: Styles.poppins12),
              Text(
                "\$ 115,000/y",
                style: Styles.poppins12.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
