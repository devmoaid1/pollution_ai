import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pollution_ai/core/routes/app_routes.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/button_row.dart';
import '../../../../core/widgets/custom_button.dart';

class ConfirmImageBottomBar extends StatelessWidget {
  const ConfirmImageBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 110.h,
        alignment: Alignment.center,
        color: Colors.white,
        child: Row(
          children: [
            const Spacer(),
            SizedBox(
              width: 128.w,
              height: 50.h,
              child: CustomButton(
                child: const ButtonRow(
                    title: 'Retake', iconPath: AppAssets.retakeIcon),
                onTap: () {
                  Get.toNamed(AppRouter.getIntialRoute());
                },
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 128.w,
              height: 50.h,
              child: CustomButton(
                child: const ButtonRow(
                    title: 'Confirm', iconPath: AppAssets.confirmIcon),
                onTap: () {
                  Get.toNamed(AppRouter.getResultRoute(),
                      arguments: (Get.routing.args) as String);
                },
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
