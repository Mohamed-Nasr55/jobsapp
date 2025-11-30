import 'package:flutter/material.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';
import 'package:jobsapp/features/auth/login/widgets/custom_textfeild.dart';
import 'package:jobsapp/features/auth/register/register_screen.dart';
import 'package:jobsapp/features/navigation_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Login here", style: Styles.poppinsBold24),
              SizedBox(height: 34),

              Text(
                "welcome back you have been missed",
                style: Styles.poppinsMedium16,
              ),
              SizedBox(height: 90),
              customTextFeild(hintText: "Email"),
              SizedBox(height: 29),

              customTextFeild(hintText: "Password"),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot your Password?",
                  style: Styles.poppinsSemiBold14,
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => NavigationScreen()),
                  );
                },
                color: AppColors.primaryColor,
                minWidth: 323,
                height: 60,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textColor: Colors.white,
                child: Text("Sign in", style: Styles.poppinsSemiBold20),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => RegisterScreen()),
                  );
                },
                child: Text(
                  "Create New Account",
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
