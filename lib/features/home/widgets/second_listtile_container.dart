import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class secondListTileContainer extends StatelessWidget {
  const secondListTileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ListTile(
        leading: Image.asset(
          Images.jrExperience,
          width: 50.w,
          height: 50.h,
        ),
        title: Text(
          "Product Manger",
          style: Styles.poppinsSemiBold14.copyWith(
            color: Colors.black,
          ),
        ),
        subtitle: Text("Beats", style: Styles.poppinsMedium14),
        trailing: Column(
          spacing: 3,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$ 84,000/y",
              style: Styles.poppinsMedium14.copyWith(
                color: Colors.black,
              ),
            ),
            Text("Florida US", style: Styles.poppinsMedium14),
          ],
        ),
      ),
    );
  }
}