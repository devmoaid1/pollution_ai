import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeInstructionSection extends StatelessWidget {
  const HomeInstructionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
