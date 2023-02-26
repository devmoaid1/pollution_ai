import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pollution_ai/app.dart';
import 'package:pollution_ai/core/dependecies.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // intialize dependecies
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  setupLocator();
  runApp(const PollutionApp());
}
