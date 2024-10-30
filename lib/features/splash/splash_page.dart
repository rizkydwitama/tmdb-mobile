import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/splash/splash_controller.dart';
import '../../utils/theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (controller) {
        return Scaffold(
            backgroundColor: AppColors.blackColor,
            body: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/image_ticket.png',
                        width: 96,
                        height: 96,
                      ),
                      const Text(
                        'TMDB',
                        style: TextStyle(
                          fontFamily: 'InterBlack',
                          fontSize: 36,
                          color: AppColors.whiteColor,
                        ),
                      )
                    ],
                  )
                )
            )
        );
      },
    );
  }
}
