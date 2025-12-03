import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/auth/login/login_screen.dart';
import 'package:jobsapp/features/auth/login/widgets/custom_textfeild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.0.w, vertical: 100.h),
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,

          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Create Account", style: Styles.poppinsBold24),
                SizedBox(height: 34.h),

                Text(
                  "Create an account so you can explore all the existing jobs",
                  style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 55.h),
                customTextFeild(hintText: "Email"),
                SizedBox(height: 25.h),

                customTextFeild(hintText: "Password"),
                SizedBox(height: 25.h),

                customTextFeild(hintText: " Confirm Password"),

                SizedBox(height: 30.h),

                SizedBox(height: 30.h),
                MaterialButton(
                  onPressed: () {},
                  color: AppColors.primaryColor,
                  minWidth: 323.w,
                  height: 60.h,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textColor: Colors.white,
                  child: Text("Register", style: Styles.poppinsSemiBold20),
                ),
                SizedBox(height: 40.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Already have an Account",
                    style: Styles.poppinsSemiBold14.copyWith(
                      color: Colors.black,
                    ),
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
