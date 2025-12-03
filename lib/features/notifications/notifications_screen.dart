import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({super.key});

  final List<String> title = [
    "Fiverr want to take a final interview of you where head of HR will see you!",
    "Macdonald want to contact with you in 24 hours with proper preparation ",
  ];
  final List<String> titleApplication = [
    "Your application is submitted soccessfully to BMW. You can check the status here.",
    "Booking.com reviewing your applicatin, cover letter and portfolio. All the best! ",
  ];
  final List<String> titleInterview = [
    "Your application is submitted soccessfully to BMW. You can check the status here.",
    "Booking.com reviewing your applicatin, cover letter and portfolio. All the best! ",
  ];

  final List<String> subTitle = ["12 min ago", "47 min ago "];
  final List<String> subTitleApplication = ["1 hrs ago", "3 hrs ago"];
  final List<String> subTitleInterview = ["4 hrs ago", "6 hrs ago"];
  final List<String> leading = [Images.fiverLogo, Images.mcdonaldsLogo];
  final List<String> leadingApplication = [Images.BMwLogo, Images.bookingLogo];
  final List<String> leadingInterview = [
    Images.jrExperience,
    Images.behanceLogo,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        surfaceTintColor: Colors.white,

        backgroundColor: Colors.white,

        title: Text(
          "Notification",
          style: Styles.poppinsSemiBold16.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New activity',
                style: Styles.poppinsMedium16.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: (title.length) * 110.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                      leading: Image.asset(leading[index]),
                      title: Text(
                        title[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                      ),

                      subtitle: Text(
                        subTitle[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Applications",
                    style: Styles.poppinsMedium16.copyWith(color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: Styles.poppinsMedium14.copyWith(color: Colors.grey),
                  ),
                ],
              ),

              SizedBox(
                height: (titleApplication.length) * 110.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),

                  itemCount: titleApplication.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                      leading: Image.asset(leadingApplication[index]),
                      title: Text(
                        titleApplication[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                      ),

                      subtitle: Text(
                        subTitleApplication[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Applications",
                    style: Styles.poppinsMedium16.copyWith(color: Colors.black),
                  ),
                  Text(
                    "See all",
                    style: Styles.poppinsMedium14.copyWith(color: Colors.grey),
                  ),
                ],
              ),

              SizedBox(
                height: (titleApplication.length) * 110.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),

                  itemCount: titleApplication.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                      leading: Image.asset(leadingApplication[index]),
                      title: Text(
                        titleApplication[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                      ),

                      subtitle: Text(
                        subTitleApplication[index],
                        style: Styles.poppinsSemiBold14.copyWith(
                          color: Colors.grey,
                          fontSize: 13.sp,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
