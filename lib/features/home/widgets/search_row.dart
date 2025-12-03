import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class searchRow extends StatelessWidget {
  const searchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search  a job or position",
              hintStyle: Styles.poppinsMedium16.copyWith(
                color: Colors.grey,
                fontSize: 13,
              ),
              filled: true,
              fillColor: AppColors.secondaryColor,
              prefixIcon: Icon(Icons.search, color: Colors.grey, size: 30.sp),

              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            width: 55.w,
            height: 55.h,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0.r),
              child: Image.asset(Images.filterIcon, width: 17.w, height: 15.h),
            ),
          ),
        ),
      ],
    );
  }
}
