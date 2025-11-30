import 'package:flutter/material.dart';
import 'package:jobsapp/core/helper/images.dart';
import 'package:jobsapp/core/theme/app_colors.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 28.0, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to job seek ",
                        style: Styles.poppinsMedium14,
                      ),
                      Text("Discover Jobs ", style: Styles.poppinsBold22),
                    ],
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset(Images.onboardingImage),
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            
              SizedBox(height: 40),
              Row(
                spacing: 15,
                children: [
                  Expanded(
                    flex: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search  a job or position",
                        hintStyle: Styles.poppinsMedium16.copyWith(
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: AppColors.secondaryColor,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ),
            
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          Images.filterIcon,
                          width: 17,
                          height: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured Jobs", style: Styles.poppinsSemiBold16),
                  Text(
                    "See All",
                    style: Styles.poppinsMedium14.copyWith(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 15,
                children: [
                  Container(
                    width: 156,
                    height: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      spacing: 7,
                      children: [
                        Image.asset(Images.jrExperience, width: 55, height: 55),
                        Text(
                          "Jr Exective",
                          style: Styles.poppinsSemiBold14.copyWith(
                            color: Colors.black,
                          ),
                        ),
            
                        Text("Pintrest", style: Styles.poppins12),
                        Text(
                          "\$ 96,000/y",
                          style: Styles.poppins12.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 156,
                    height: 164,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      spacing: 7,
                      children: [
                        SizedBox(height: 5),
                        Image.asset(Images.spotifyImg, width: 40, height: 40),
                        Text(
                          "Sr Developer",
                          style: Styles.poppinsSemiBold14.copyWith(
                            color: Colors.black,
                          ),
                        ),
            
                        Text("Spotify", style: Styles.poppins12),
                        Text(
                          "\$ 115,000/y",
                          style: Styles.poppins12.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Jobs", style: Styles.poppinsSemiBold16),
                  Text(
                    "See All",
                    style: Styles.poppinsMedium14.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
