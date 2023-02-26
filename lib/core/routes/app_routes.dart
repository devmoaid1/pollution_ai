import 'package:get/get.dart';

import '../../features/home/presentation/views/home_view.dart';

class AppRouter {
  AppRouter._();

  static const String _intialRoute = '/';

  static getIntialRoute() => _intialRoute;

  static final routes = [
    GetPage(
      name: _intialRoute,
      page: () => const HomeView(),
    )
  ];
}
