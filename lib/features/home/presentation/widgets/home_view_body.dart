import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/extensions/spaces.dart';
import 'package:pollution_ai/features/home/presentation/widgets/home_graphics_section.dart';

import 'app_icon.dart';
import 'home_actions_section.dart';
import 'home_instruction_section.dart';

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
            36.h.vSpace,
            const AppIcon(),
            60.h.vSpace,
            const HomeInstructionSection(),
            40.h.vSpace,
            const HomeActionsSection(),
            14.h.vSpace,
            const HomeGraphicsSection()
          ],
        ),
      ),
    );
  }
}
