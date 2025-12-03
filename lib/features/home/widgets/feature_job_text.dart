
import 'package:flutter/material.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class featureJobsText extends StatelessWidget {
  const featureJobsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Featured Jobs", style: Styles.poppinsSemiBold16),
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
