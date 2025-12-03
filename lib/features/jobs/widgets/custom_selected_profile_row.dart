
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class CustomSelectedProfileRow extends StatelessWidget {
  const CustomSelectedProfileRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 155.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  heightFactor: 0.4,
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.radio_button_off_outlined,
                    color: Colors.grey,
                  ),
                ),
                Image.asset(
                  Images.pgirlone,
                  width: 72.w,
                  height: 72.h,
                ),
                Text(
                  "Hailey Jessica",
                  style: Styles.poppinsSemiBold16.copyWith(
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "UX Designer",
                      style: Styles.poppinsMedium14.copyWith(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 8.w),
    
                    Image.asset(
                      Images.verifiedIcon,
                      width: 15.w,
                      height: 15.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    
        Container(
          width: 155.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  heightFactor: 0.4,
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.check_circle,
                    color: AppColors.primaryColor,
                  ),
                ),
                Image.asset(
                  Images.pgirlone,
                  width: 72.w,
                  height: 72.h,
                ),
                Text(
                  "Hailey Jessica",
                  style: Styles.poppinsSemiBold16.copyWith(
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "product Designer",
                      style: Styles.poppins12.copyWith(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 2.w),
    
                    Image.asset(
                      Images.verifiedIcon,
                      width: 15.w,
                      height: 15.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
