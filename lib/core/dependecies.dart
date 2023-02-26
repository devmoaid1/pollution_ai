import 'package:get_it/get_it.dart';
import 'package:pollution_ai/features/home/presentation/viewmodels/cubit/home_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerFactory(() => HomeCubit());
}
