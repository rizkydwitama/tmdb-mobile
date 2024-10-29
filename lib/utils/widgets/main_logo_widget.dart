import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class MainLogoWidget extends StatelessWidget {
  const MainLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
