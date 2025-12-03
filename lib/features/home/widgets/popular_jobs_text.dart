
import 'package:flutter/material.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class popularJobsText extends StatelessWidget {
  const popularJobsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Popular Jobs", style: Styles.poppinsSemiBold16),
        Text(
          "See All",
          style: Styles.poppinsMedium14.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}