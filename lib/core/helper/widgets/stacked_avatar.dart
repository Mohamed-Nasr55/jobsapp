import 'package:flutter/material.dart';
import 'package:jobsapp/core/helper/images.dart';

class StackedAvatar extends StatelessWidget {
  const StackedAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: Stack(
        children: [
          CircleAvatar(radius: 30, child: Image.asset(Images.pTwo)),
          Positioned(
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 5, backgroundColor: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
