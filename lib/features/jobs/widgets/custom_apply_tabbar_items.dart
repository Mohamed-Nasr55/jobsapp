
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class CustomApplyTabBarItems extends StatelessWidget {
  const CustomApplyTabBarItems({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400.h,
      child: TabBarView(
        controller: tabController,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0.w,
              vertical: 16.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We are the teams who create all of Facebook's products used by billions of people around the world. Want to build new features and improve existing products like Messenger, Video, Groups, News Feed, Search and more?",
                  style: Styles.poppinsSemiBold14.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Responsibilities",
                  style: Styles.poppinsSemiBold16.copyWith(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.h),
    
                Text(
                  "Full stack web/mobile application development with a variety of coding languages",
                  style: Styles.poppinsSemiBold14.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 16.h),
    
                Text(
                  "Create consumer products and features using internal programming language Hack",
                  style: Styles.poppinsSemiBold14.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 16.h),
    
                Text(
                  "Implement web or mobile interfaces using XHTML, CSS, and JavaScript",
                  style: Styles.poppinsSemiBold14.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Center(child: Text("Recuirments")),
          Center(child: Text("About")),
          Center(child: Text("Reviews")),
        ],
      ),
    );
  }
}
