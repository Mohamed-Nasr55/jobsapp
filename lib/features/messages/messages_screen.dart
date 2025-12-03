import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/messages/widgets/custom_listtile.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});

  final List<String> title = ["Google", "HP", "Spotify"];
  final List<String> persons = [
    "Erik John",
    "Nicolas Pooran",
    "Jessica Jenith",
    "Rowling Kint",
  ];
  final List<String> subTitle = [
    "Are You Available for interview ...",
    "we are looking forwaed to ...",
    "Are You Available for interview ...",
  ];
  final List<String> subTitlePersons = [
    "Are You Available for interview ...",
    "we are looking forwaed to ...",
    "Are You Available for interview ...",
    "Are You Available for interview ...",
  ];
  final List<String> leading = [
    Images.googleLogo,
    Images.hpLogo,
    Images.spotifyImg,
  ];
  final List<String> leadingPersons = [
    Images.pOne,
    Images.pTwo,
    Images.pThree,
    Images.pfour,
  ];
  final List<String> numOfMessages = ["4", "1", "2"];
  final List<String> numOfMessagesPersons = ["4", "1", "2", "3"];
  final List<bool> isReaded = [false, false, true];
  final List<bool> isReadedPersons = [false, false, true, true];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text(
            "Messages",
            style: Styles.poppinsSemiBold16.copyWith(
              color: Colors.black,
              fontSize: 18.sp,
            ),
          ),
          actions: [
            Icon(Icons.search, size: 30.w, color: Colors.grey),
            SizedBox(width: 10.w),

            Icon(Icons.edit_square, size: 30.w, color: Colors.grey),
            SizedBox(width: 15.w),
          ],
        ),

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Search a chat or message",
                    hintStyle: Styles.poppinsMedium16.copyWith(
                      color: Colors.grey,
                    ),
                    fillColor: AppColors.secondaryColor,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30.sp,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 12.h),

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),

                SizedBox(height: 24.h),
                Text(
                  "Companies",
                  style: Styles.poppinsSemiBold16.copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: (title.length) * 100.h,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: title.length,
                    itemBuilder: (context, index) {
                      return CustomListTile(
                        leading: leading,
                        title: title,
                        subTitle: subTitle,
                        isReaded: isReaded,
                        numOfMessages: numOfMessages,
                        index: index,
                      );
                    },
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Individual Messages",
                  style: Styles.poppinsSemiBold16.copyWith(color: Colors.black),
                ),

                SizedBox(
                  height: (persons.length) * 100.h,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: persons.length,
                    itemBuilder: (context, index) {
                      return CustomListTile(
                        leading: leadingPersons,
                        title: persons,
                        subTitle: subTitlePersons,
                        isReaded: isReadedPersons,
                        numOfMessages: numOfMessagesPersons,
                        index: index,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
