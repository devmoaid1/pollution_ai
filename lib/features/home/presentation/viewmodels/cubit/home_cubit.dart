// ignore_for_file: empty_catches

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pollution_ai/core/routes/app_routes.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void handleGalleryPick() async {
    try {
      final picker = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      if (picker != null) {
        Get.toNamed(AppRouter.getConfirmImage(), arguments: picker.path);
      }
    } catch (err) {}
  }
}
