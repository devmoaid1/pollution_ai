import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/extensions/spaces.dart';

import 'custom_svg_icon.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.title, required this.iconPath});
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomSvgIcon(
          iconPath: iconPath,
          color: Colors.white,
        ),
        8.w.hSpace,
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.white, fontFamily: 'Jua'),
        )
      ],
    );
  }
}
