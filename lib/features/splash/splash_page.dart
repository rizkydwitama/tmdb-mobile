import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/splash/splash_controller.dart';
import 'package:tmdb_mobile/utils/widgets/main_logo_widget.dart';
import '../../utils/theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return const Scaffold(
            backgroundColor: AppColors.blackColor,
            body: SafeArea(
                child: Center(
                  child: MainLogoWidget(),
                )
            )
        );
      },
    );
  }
}
