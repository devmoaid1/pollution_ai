import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pollution_ai/core/constants/app_assets.dart';
import 'package:pollution_ai/core/extensions/spaces.dart';
import 'package:pollution_ai/core/routes/app_routes.dart';
import 'package:pollution_ai/core/widgets/button_row.dart';
import 'package:pollution_ai/core/widgets/custom_button.dart';
import 'package:pollution_ai/features/result/presentation/widgets/result_image.dart';
import 'package:pollution_ai/features/result/presentation/widgets/results_section.dart';

import 'result_header.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ResultHeader(),
            28.h.vSpace,
            const ResultImage(),
            17.h.vSpace,
            const ResultsSection(),
            50.h.vSpace,
            CustomButton(
              child: const ButtonRow(
                  title: 'Resubmit', iconPath: AppAssets.resubmitIcon),
              onTap: () {
                Get.offNamed(AppRouter.getIntialRoute());
              },
            )
          ],
        ),
      ),
    );
  }
}
