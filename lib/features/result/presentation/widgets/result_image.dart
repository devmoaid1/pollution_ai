import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResultImage extends StatelessWidget {
  const ResultImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 289.w,
      height: 373.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(34.r),
        child: Image.file(
          File((Get.routing.args) as String),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
