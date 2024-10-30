import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class MainTextFormFieldWidget extends StatelessWidget {
  final double width;
  final double height;
  final String hintText;

  const MainTextFormFieldWidget({
    super.key,
    required this.width,
    required this.height,
    required this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textSoftGrayColor
        ),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24),
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.textSoftGrayColor
            ),
            fillColor: AppColors.mainColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(999),
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }
}
