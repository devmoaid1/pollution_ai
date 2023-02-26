import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class HomeActionsSection extends StatelessWidget {
  const HomeActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomSvgIcon(
                iconPath: AppAssets.cameraIcon,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                'camera',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white, fontFamily: 'Jua'),
              )
            ],
          ),
          onTap: () {},
        ),
        SizedBox(
          height: 42.h,
        ),
        CustomButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomSvgIcon(
                iconPath: AppAssets.galleryIcon,
                color: Colors.white,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                'Gallery',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white, fontFamily: 'Jua'),
              )
            ],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
