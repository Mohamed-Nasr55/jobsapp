import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/app_lists.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/home/widgets/drawer_home_header_widget.dart';
import 'package:jobsapp/features/home/widgets/feature_job_row.dart';
import 'package:jobsapp/features/home/widgets/feature_job_text.dart';
import 'package:jobsapp/features/home/widgets/first_listtile_container.dart';
import 'package:jobsapp/features/home/widgets/popular_jobs_text.dart';
import 'package:jobsapp/features/home/widgets/search_row.dart';
import 'package:jobsapp/features/home/widgets/second_listtile_container.dart';
import 'package:jobsapp/features/home/widgets/welcome_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHomeHeaderWidget(),
              SizedBox(height: 10.h),
              SizedBox(
                height: 400.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: AppLists.titleDrawer.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        AppLists.titleDrawer[index],
                        style: Styles.poppinsMedium16.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      leading: Image.asset(
                        AppLists.leadingDrawer[index],
                        width: 25.w,
                        height: 20.h,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                ),
                icon: Icon(
                  Icons.workspace_premium_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
                label: Text(
                  "Go Premium",
                  style: Styles.poppinsMedium16.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 28.0.h, left: 24.w, right: 24.w),
              child: Column(
                children: [
                  welcomeHeader(),

                  SizedBox(height: 40.h),
                  searchRow(),
                  SizedBox(height: 40.h),
                  featureJobsText(),
                  SizedBox(height: 20.h),
                  featureJobRow(),

                  SizedBox(height: 40.h),
                  popularJobsText(),
                  SizedBox(height: 20.h),
                  FirstListtileContainer(),

                  SizedBox(height: 20.h),
                  secondListTileContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
