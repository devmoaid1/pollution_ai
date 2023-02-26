import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/button_row.dart';
import '../../../../core/widgets/custom_button.dart';

class ConfirmImageBottomBar extends StatelessWidget {
  const ConfirmImageBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.15,
      color: Colors.white,
      child: Row(
        children: [
          const Spacer(),
          SizedBox(
            width: 128.w,
            child: CustomButton(
              child: const ButtonRow(
                  title: 'Retake', iconPath: AppAssets.retakeIcon),
              onTap: () {},
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 128.w,
            child: CustomButton(
              child: const ButtonRow(
                  title: 'confirm', iconPath: AppAssets.confirmIcon),
              onTap: () {},
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
