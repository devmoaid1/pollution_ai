import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/constants/app_assets.dart';
import 'package:pollution_ai/core/widgets/custom_svg_icon.dart';

class HomeGraphicsSection extends StatelessWidget {
  const HomeGraphicsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w),
      child: CustomSvgIcon(
        iconPath: AppAssets.homeGraphics,
        width: 385.w,
        boxFit: BoxFit.fill,
      ),
    );
  }
}
