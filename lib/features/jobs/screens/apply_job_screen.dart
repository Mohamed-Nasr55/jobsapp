import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/jobs/screens/succesful_applied_screen.dart';
import 'package:jobsapp/features/jobs/widgets/custom_filepicker_container.dart';
import 'package:jobsapp/features/jobs/widgets/custom_selected_profile_row.dart';
import 'package:jobsapp/features/jobs/widgets/custom_selected_resume_row.dart';
import 'package:jobsapp/features/jobs/widgets/custom_textfeild_container.dart';
import 'package:jobsapp/features/jobs/widgets/first_header_job_apply.dart';

class ApplyJobScreen extends StatefulWidget {
  const ApplyJobScreen({super.key});

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
  File? uploadedPdf;

  Future<void> uploadResume() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      setState(() {
        uploadedPdf = File(result.files.single.path!);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text("File uploaded Succesfully "),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Apply",
          style: Styles.poppinsSemiBold16.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FirstHeaderJobApply(),
              SizedBox(height: 24.h),

              Padding(
                padding: EdgeInsets.only(left: 24.0.w),
                child: Text(
                  "Select a profile",
                  style: Styles.poppinsSemiBold16.copyWith(color: Colors.black),
                ),
              ),

              SizedBox(height: 16.h),
              CustomSelectedProfileRow(),

              Padding(
                padding: EdgeInsets.only(left: 20.0.w, top: 24.h, bottom: 24.h),
                child: Text(
                  "Selecte a Resume",
                  style: Styles.poppinsSemiBold16.copyWith(color: Colors.black),
                ),
              ),

              CustomSelectedResumeRow(),

              Padding(
                padding: EdgeInsets.only(top: 20.0.h, left: 20.w, bottom: 20.h),
                child: Row(
                  children: [
                    Text(
                      "Cover Letter",
                      style: Styles.poppinsSemiBold16.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "(Optional)",
                      style: Styles.poppinsSemiBold14.copyWith(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextFeildContainer(),
                  GestureDetector(
                    onTap: () async {
                      await uploadResume();
                    },
                    child: CustomFilePickerContainer(uploadedPdf: uploadedPdf),
                  ),
                ],
              ),
              SizedBox(height: 30.h),

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
                        MaterialPageRoute(
                          builder: (_) => SuccesfulAppliedScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Apply",
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
