
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.subTitle,
    required this.isReaded,
    required this.numOfMessages,
    required this.index,
  });

  final List<String> leading;
  final List<String> title;
  final List<String> subTitle;
  final List<bool> isReaded;
  final List<String> numOfMessages;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8.h),
      leading: Image.asset(leading[index], width: 40.w, height: 40.h),
      title: Text(title[index], style: Styles.poppinsMedium16),
      subtitle: Text(
        subTitle[index],
        style: Styles.poppinsMedium14.copyWith(
          color: isReaded[index] == true ? Colors.grey : Colors.black,
        ),
      ),
      trailing: Column(
        spacing: 3.h,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "11:45 am",
            style: Styles.poppinsSemiBold14.copyWith(
              color: isReaded[index] == true ? Colors.grey : Colors.black,
            ),
          ),
          isReaded[index] == true
              ? SizedBox()
              : CircleAvatar(
                radius: 10.r,
                backgroundColor: AppColors.primaryColor,
                child: Text(
                  numOfMessages[index],
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
        ],
      ),
    );
  }
}
