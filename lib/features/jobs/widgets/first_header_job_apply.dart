
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class FirstHeaderJobApply extends StatelessWidget {
  const FirstHeaderJobApply({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 74.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 35.w),
        leading: Image.asset(
          Images.jrExperience,
          width: 44.w,
          height: 44.h,
        ),
        title: Text(
          "Product Manager",
          style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
        ),
        subtitle: Text("Beats", style: Styles.poppinsMedium14),
        trailing: Column(
          spacing: 3,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$ 88,000/y",
              style: Styles.poppinsMedium14.copyWith(color: Colors.black),
            ),
            Text("Los Angles US", style: Styles.poppinsMedium14),
          ],
        ),
      ),
    );
  }
}
