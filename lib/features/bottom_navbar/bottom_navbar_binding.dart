import 'package:get/get.dart';
import 'package:tmdb_mobile/features/bottom_navbar/bottom_navbar_controller.dart';
import 'package:tmdb_mobile/features/home/home_controller.dart';
import 'package:tmdb_mobile/features/profile/profile_controller.dart';
import 'package:tmdb_mobile/features/watchlist/watchlist_controller.dart';
import '../searching/searching_controller.dart';

class BottomNavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavbarController>(() => BottomNavbarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<WatchlistController>(() => WatchlistController());
    Get.lazyPut<SearchingController>(() => SearchingController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}