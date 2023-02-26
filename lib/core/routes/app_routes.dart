import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:pollution_ai/features/home/presentation/viewmodels/cubit/home_cubit.dart';

import '../../features/confirm_image/presentation/views/confirm_image_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../dependecies.dart';

class AppRouter {
  AppRouter._();

  static const String _intialRoute = '/';
  static const String _confirmImageRoute = '/confirm-image';

  static getIntialRoute() => _intialRoute;
  static getConfirmImage() => _confirmImageRoute;

  static final routes = [
    GetPage(
      name: _intialRoute,
      page: () => BlocProvider(
        create: (context) => sl<HomeCubit>(),
        child: const HomeView(),
      ),
    ),
    GetPage(
      name: _confirmImageRoute,
      page: () {
        return const ConfirmImageView();
      },
    )
  ];
}
