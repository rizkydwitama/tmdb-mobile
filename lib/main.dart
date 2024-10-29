import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/routes/page_names.dart';
import 'package:tmdb_mobile/routes/page_routes.dart';
import 'package:tmdb_mobile/utils/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: PageNames.SPLASH,
        getPages: PageRoutes.pages,
        theme: AppTheme.buildThemeData()
    );
  }
}

