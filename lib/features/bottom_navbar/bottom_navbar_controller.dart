import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  RxBool canPop = false.obs;
  RxInt currentIndex = 0.obs;
}