import 'package:flutter/material.dart';
import 'package:pollution_ai/features/confirm_image/presentation/widgets/confirm_image_body.dart';

class ConfirmImageView extends StatelessWidget {
  const ConfirmImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ConfirmImageViewBody(),
    );
  }
}
