import 'package:get/get.dart';
import 'package:tmdb_mobile/features/authentication/default/default_controller.dart';

class DefaultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DefaultController>(() => DefaultController());
  }
}