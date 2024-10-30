import 'package:get/get.dart';
import 'package:tmdb_mobile/features/splash/splash_binding.dart';
import 'package:tmdb_mobile/features/splash/splash_page.dart';
import 'package:tmdb_mobile/routes/page_names.dart';
import '../features/authentication/default/default_binding.dart';
import '../features/authentication/default/default_page.dart';
import '../features/authentication/login/login_binding.dart';
import '../features/authentication/login/login_page.dart';
import '../features/authentication/register/register_binding.dart';
import '../features/authentication/register/register_page.dart';

class PageRoutes {
  static final pages = [
    GetPage(
        name: PageNames.SPLASH,
        binding: SplashBinding(),
        page: () => const SplashPage()
    ),
    GetPage(
        name: PageNames.DEFAULT,
        binding: DefaultBinding(),
        page: () => const DefaultPage()
    ),
    GetPage(
        name: PageNames.LOGIN,
        binding: LoginBinding(),
        page: () => const LoginPage()
    ),
    GetPage(
        name: PageNames.REGISTER,
        binding: RegisterBinding(),
        page: () => const RegisterPage()
    )
  ];
}