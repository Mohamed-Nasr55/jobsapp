
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class CustomFilePickerContainer extends StatelessWidget {
  const CustomFilePickerContainer({
    super.key,
    required this.uploadedPdf,
  });

  final File? uploadedPdf;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68.w,
      height: 90.h,
      decoration: BoxDecoration(color: Colors.white),
      child:
          uploadedPdf != null
              ? Center(
                child: Text(
                  "File Uploaded",
                  style: Styles.poppinsMedium14.copyWith(
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
              : Column(
                spacing: 3,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.upload,
                    color: AppColors.primaryColor,
                  ),
                  Text(
                    "upload ",
                    style: Styles.poppinsMedium14,
                  ),
                  Text("PDF ", style: Styles.poppinsMedium14),
                ],
              ),
    );
  }
}
