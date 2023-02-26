import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pollution_ai/core/constants/app_constants.dart';
import 'package:pollution_ai/core/routes/app_routes.dart';
import 'package:pollution_ai/core/theme/light/light_theme.dart';

class PollutionApp extends StatelessWidget {
  const PollutionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.appName,
        navigatorKey: Get.key,
        initialRoute: AppRouter.getIntialRoute(),
        getPages: AppRouter.routes,
        useInheritedMediaQuery: true,
        theme: lightTheme,
      ),
    );
  }
}
