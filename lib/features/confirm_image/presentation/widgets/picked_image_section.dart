import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickedImageSection extends StatelessWidget {
  final String path;
  const PickedImageSection({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.8,
      child: Image.file(
        File(path),
        fit: BoxFit.fill,
      ),
    );
  }
}
