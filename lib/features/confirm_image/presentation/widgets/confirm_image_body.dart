import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'confirm_image_bottom_bar.dart';
import 'picked_image_section.dart';

class ConfirmImageViewBody extends StatelessWidget {
  const ConfirmImageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PickedImageSection(path: (Get.routing.args) as String),
        const ConfirmImageBottomBar()
      ],
    ));
  }
}
