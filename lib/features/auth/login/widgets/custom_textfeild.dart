import 'package:flutter/material.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class customTextFeild extends StatelessWidget {
  const customTextFeild({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        fillColor: AppColors.secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hintText,
        hintStyle: Styles.poppinsMedium16,
      ),
    );
  }
}
