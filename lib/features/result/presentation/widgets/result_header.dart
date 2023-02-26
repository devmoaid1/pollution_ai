import 'package:flutter/material.dart';

class ResultHeader extends StatelessWidget {
  const ResultHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.arrow_back),
        const Spacer(),
        Text(
          'Result',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        )
      ],
    );
  }
}
