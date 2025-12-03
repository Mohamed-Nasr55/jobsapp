import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/helper/widgets/stacked_avatar.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/jobs/screens/job_details_screen.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  int selectedInex = 0;
  List<String> categories = ["All", "Design", "Developer", "Manger"];
  List<String> leading = [
    Images.spotifyImg,
    Images.volleyball,
    Images.facebookLogo,
  ];
  List<String> title = ["UX Intern", "UX Designer", "Product  Designer"];
  List<String> subTitle = ["Spotify", "Dribbble", "Facebook"];
  List<String> salaries = ["\$ 88,000/y", "\$ 96,000/y", "\$ 120,000/y"];
  List<String> jobsLocation = [
    "Los Angels, US",
    "San Francisco, US",
    "San Jose, US",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        surfaceTintColor: AppColors.secondaryColor,
        title: Text("Saved", style: Styles.poppinsMedium16),
        centerTitle: true,
        actions: [StackedAvatar(), SizedBox(width: 15.w)],
      ),

      body: Padding(
        padding: EdgeInsets.only(left: 24.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            Text(
              "You Saved 48 Jobs",
              style: Styles.poppinsMedium16.copyWith(fontSize: 20.sp),
            ),
            SizedBox(height: 24.h),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10.w,
                children: List.generate(categories.length, (index) {
                  return ChoiceChip(
                    backgroundColor: AppColors.secondaryColor,
                    disabledColor: Colors.white,
                    selectedColor: AppColors.primaryColor,
                    showCheckmark: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(97.r),
                    ),
                    label: Text(categories[index]),
                    labelStyle: TextStyle(
                      color: selectedInex == index ? Colors.white : Colors.grey,
                    ),
                    selected: selectedInex == index,
                    onSelected: (value) {
                      setState(() {
                        selectedInex = index;
                      });
                    },
                  );
                }),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => JobDetailsScreen()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 24.w, top: 16.h),
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      width: 327.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset(
                              leading[index],
                              width: 50.w,
                              height: 50.h,
                            ),
                            title: Text(
                              title[index],
                              style: Styles.poppinsSemiBold14.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              subTitle[index],
                              style: Styles.poppinsMedium14,
                            ),
                            trailing: Column(
                              spacing: 3,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  salaries[index],
                                  style: Styles.poppinsMedium14.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  jobsLocation[index],
                                  style: Styles.poppinsMedium14,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 11),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 114.w,
                                height: 33.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red.shade100,
                                ),
                                child: Center(
                                  child: Text(
                                    "Close",
                                    style: Styles.poppinsMedium14.copyWith(
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              Text("Full Time", style: Styles.poppins12),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
