import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class AccentButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  Widget? iconLeft;
  Widget? iconRight;
  final Function()? onPressed;

  AccentButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.iconLeft,
    this.iconRight,
    required this.onPressed,
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
            padding: EdgeInsets.zero
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            iconLeft ?? const SizedBox(),
            Text(
              text,
              style: const TextStyle(
                  color: AppColors.textWhiteColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500
              ),
            ),
            iconRight ?? const SizedBox(),
          ],
        )
      ),
    );
  }
}
