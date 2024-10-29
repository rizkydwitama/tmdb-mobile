import 'package:get/get.dart';
import 'package:tmdb_mobile/features/login/login_page.dart';
import 'package:tmdb_mobile/features/splash/splash_binding.dart';
import 'package:tmdb_mobile/features/splash/splash_page.dart';
import 'package:tmdb_mobile/routes/page_names.dart';
import '../features/login/login_binding.dart';

class PageRoutes {
  static final pages = [
    GetPage(
        name: PageNames.SPLASH,
        binding: SplashBinding(),
        page: () => const SplashPage()
    ),
    GetPage(
        name: PageNames.LOGIN,
        binding: LoginBinding(),
        page: () => const LoginPage()
    )
  ];
}