import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/extensions/spaces.dart';
import 'package:pollution_ai/core/widgets/button_row.dart';
import 'package:pollution_ai/features/home/presentation/viewmodels/cubit/home_cubit.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_button.dart';

class HomeActionsSection extends StatelessWidget {
  const HomeActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButton(
          child:
              const ButtonRow(title: 'Camera', iconPath: AppAssets.cameraIcon),
          onTap: () {},
        ),
        42.h.vSpace,
        CustomButton(
          child: const ButtonRow(
              title: 'Gallery', iconPath: AppAssets.galleryIcon),
          onTap: () {
            BlocProvider.of<HomeCubit>(context).handleGalleryPick();
          },
        ),
      ],
    );
  }
}
