import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/enums/result_types.dart';
import 'package:pollution_ai/features/result/presentation/widgets/result_card.dart';

class ResultsSection extends StatelessWidget {
  const ResultsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          const ResultCard(
            resultType: ResultType.pollutionType,
          ),
          const Spacer(),
          Container(
              margin: EdgeInsets.only(top: 50.h),
              child: const ResultCard(
                resultType: ResultType.confidence,
              ))
        ],
      ),
    );
  }
}
