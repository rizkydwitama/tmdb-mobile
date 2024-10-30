import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../theme/app_colors.dart';

class WhiteButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final String asset;
  final Function()? onPressed;

  const WhiteButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.asset,
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
            backgroundColor: AppColors.whiteColor,
            side: BorderSide(
              color: const Color(0xFF1E2432).withOpacity(0.23),
            )
        ),
        child: Row(
          children: [
            SvgPicture.asset(asset),
            const SizedBox(width: 8,),
            Text(
              text,
              style: const TextStyle(
                  color: AppColors.textBlackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
            ),
          ],
        )
      ),
    );
  }
}