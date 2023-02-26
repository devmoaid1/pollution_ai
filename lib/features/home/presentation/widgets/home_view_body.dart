import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/constants/app_assets.dart';
import 'package:pollution_ai/core/widgets/custom_svg_icon.dart';
import 'package:pollution_ai/features/home/presentation/widgets/home_graphics_section.dart';

import 'home_actions_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
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
            Center(
              child: SizedBox(
                width: 270.w,
                child: Text(
                  'Choose or capture a photo of visual pollution from your device',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            const HomeActionsSection(),
            SizedBox(
              height: 14.h,
            ),
            const HomeGraphicsSection()
          ],
        ),
      ),
    );
  }
}
