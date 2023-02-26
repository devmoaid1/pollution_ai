import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pollution_ai/app.dart';
import 'package:pollution_ai/core/dependecies.dart';

void main() {
  setupLocator();
  runApp(DevicePreview(
      enabled: kDebugMode,
      builder: (context) {
        return const PollutionApp();
      }));
}
