
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class DrawerHomeHeaderWidget extends StatelessWidget {
  const DrawerHomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: SingleChildScrollView(
          child: Column(
            spacing: 5,
            children: [
              Align(
                heightFactor: 0.3,
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0, right: 10),
                  child: Icon(Icons.close),
                ),
              ),
    
              Image.asset(Images.pgirlone, width: 100, height: 100),
    
              Text(
                "Haley Jessica",
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
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(width: 2),
    
                  Image.asset(
                    Images.verifiedIcon,
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
              Text(
                "View Profile",
                style: Styles.poppinsMedium14.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
