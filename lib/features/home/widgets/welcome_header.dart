
import 'package:flutter/material.dart';
import 'package:jobsapp/core/helper/widgets/stacked_avatar.dart';
import 'package:jobsapp/core/theme/text_styles.dart';

class welcomeHeader extends StatelessWidget {
  const welcomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        StackedAvatar(),
      ],
    );
  }
}
