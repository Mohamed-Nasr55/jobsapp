import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Create Account", style: Styles.poppinsBold24),
              SizedBox(height: 34),

              Text(
                "Create an account so you can explore all the existing jobs",
                style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 55),
              customTextFeild(hintText: "Email"),
              SizedBox(height: 25),

              customTextFeild(hintText: "Password"),
              SizedBox(height: 25),

              customTextFeild(hintText: " Confirm Password"),

              SizedBox(height: 30),

              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {},
                color: AppColors.primaryColor,
                minWidth: 323,
                height: 60,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textColor: Colors.white,
                child: Text("Register", style: Styles.poppinsSemiBold20),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
                child: Text(
                  "Already have an Account",
                  style: Styles.poppinsSemiBold14.copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
