import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class FirstListtileContainer extends StatelessWidget {
  const FirstListtileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.w,
      height: 74.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Image.asset(Images.burgerKing, width: 41.w, height: 43.h),
        title: Text(
          "Jr Execetive",
          style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
        ),
        subtitle: Text("Burger King", style: Styles.poppinsMedium14),
        trailing: Column(
          spacing: 3,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$ 96,000/y",
              style: Styles.poppinsMedium14.copyWith(color: Colors.black),
            ),
            Text("Los Angles US", style: Styles.poppinsMedium14),
          ],
        ),
      ),
    );
  }
}
