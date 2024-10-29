import 'dart:async';
import 'package:get/get.dart';
import '../../routes/page_names.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(PageNames.LOGIN);
    });
    super.onInit();
  }
}