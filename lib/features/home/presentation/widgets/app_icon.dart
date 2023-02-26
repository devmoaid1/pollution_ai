import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSvgIcon(
      iconPath: AppAssets.appIconSvg,
      boxFit: BoxFit.fill,
      width: 100.w,
      height: 100.h,
    );
  }
}
