import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class AccentButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Function()? onPressed;

  const AccentButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accentColor,
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: AppColors.textWhiteColor,
              fontSize: 12,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
