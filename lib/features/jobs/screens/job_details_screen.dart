import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/jobs/screens/apply_job_screen.dart';
import 'package:jobsapp/features/jobs/widgets/custom_apply_tabbar_items.dart';
import 'package:jobsapp/features/jobs/widgets/custom_details_tabbar.dart';
import 'package:jobsapp/features/jobs/widgets/custom_job_details_header.dart';

class JobDetailsScreen extends StatefulWidget {
  JobDetailsScreen({super.key});

  @override
  State<JobDetailsScreen> createState() => _JobDetailsScreenState();
}

class _JobDetailsScreenState extends State<JobDetailsScreen>
    with SingleTickerProviderStateMixin {
  List<String> desc = ["Design", "Full Time", "Junior"];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomJobDetailsHeader(desc: desc),
              SizedBox(height: 25.h),
              CustomDetailsTabbar(tabController: tabController),
              CustomApplyTabBarItems(tabController: tabController),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Container(
                  width: double.infinity,
                  height: 50.h,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ApplyJobScreen()),
                      );
                    },
                    child: Text(
                      "Apply Now",
                      style: Styles.poppinsMedium16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
