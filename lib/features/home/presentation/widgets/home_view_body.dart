import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/constants/app_assets.dart';
import 'package:pollution_ai/core/widgets/custom_svg_icon.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 36.h,
        ),
        CustomSvgIcon(
          iconPath: AppAssets.appIconSvg,
          boxFit: BoxFit.fill,
          width: 100.w,
          height: 100.h,
        ),
        SizedBox(
          height: 60.h,
        ),
        SizedBox(
          width: 301.w,
          child: Text(
            'Choose or capture a photo of visual pollution from your device',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        )
      ],
    );
  }
}
