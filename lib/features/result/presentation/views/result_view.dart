import 'package:flutter/material.dart';
import 'package:pollution_ai/features/result/presentation/widgets/result_view_body.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResultViewBody(),
    );
  }
}
