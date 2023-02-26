import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/enums/result_types.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/light/app_colors_light.dart';
import '../../../../core/widgets/custom_svg_icon.dart';

class ResultCard extends StatelessWidget {
  final ResultType resultType;
  const ResultCard({super.key, required this.resultType});

  @override
  Widget build(BuildContext context) {
    switch (resultType) {
      case ResultType.pollutionType:
        return Stack(
          children: [
            const CustomSvgIcon(iconPath: AppAssets.pollutionTypeGrahic),
            Positioned(
                top: 60.h,
                right: 10.w,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Pollution Type',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black, fontFamily: 'Lato'),
                    ),
                    Text(
                      'Garbage',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColorsLight.kPollutionTextColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        );

      case ResultType.confidence:
        return Stack(
          children: [
            const CustomSvgIcon(iconPath: AppAssets.confidenceGraphic),
            Positioned(
                top: 40.h,
                right: 10.w,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Confidence',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black, fontFamily: 'Lato'),
                    ),
                    Text(
                      '98%',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColorsLight.kConfidenceTextColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        );
    }
  }
}
