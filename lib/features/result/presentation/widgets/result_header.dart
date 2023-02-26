import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pollution_ai/core/extensions/spaces.dart';

class ResultHeader extends StatelessWidget {
  const ResultHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        10.w.hSpace,
        InkWell(onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
        const Spacer(),
        Text(
          'Result',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
        const Spacer(),
      ],
    );
  }
}
