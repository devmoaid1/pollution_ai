import 'package:flutter/material.dart';

extension Spaces on num {
  SizedBox get vSpace => SizedBox(
        height: toDouble(),
      );
  SizedBox get hSpace => SizedBox(
        width: toDouble(),
      );
}
