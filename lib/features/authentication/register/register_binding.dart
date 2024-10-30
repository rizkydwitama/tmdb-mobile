import 'package:get/get.dart';
import 'package:tmdb_mobile/features/authentication/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() => RegisterController());
  }
}