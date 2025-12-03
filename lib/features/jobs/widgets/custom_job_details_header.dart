
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class CustomJobDetailsHeader extends StatelessWidget {
  const CustomJobDetailsHeader({
    super.key,
    required this.desc,
  });

  final List<String> desc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 270.h,
          decoration: BoxDecoration(color: Colors.white),
        ),
        Positioned(
          left: 10,
          top: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        Positioned(
          right: 10,
          top: 20,
          child: Icon(Icons.bookmark_add_rounded, color: Colors.grey),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 25,
          child: Column(
            spacing: 20,
            children: [
              Image.asset(
                Images.jrExperience,
                width: 60.w,
                height: 60.h,
              ),
              Text(
                "Product Manger",
                style: Styles.poppinsSemiBold16.copyWith(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
              Text(
                "Beats",
                style: Styles.poppinsMedium16.copyWith(
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(desc.length, (index) {
                  return Container(
                    width: 100.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        desc[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.grey,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "\$ 180,000/y",
                    style: Styles.poppinsSemiBold16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Seattle , USA",
                    style: Styles.poppinsSemiBold16.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
