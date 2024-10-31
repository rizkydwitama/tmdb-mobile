import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/app_colors.dart';

class TrailerCard extends StatelessWidget {
  final double width;
  final double height;
  final String poster;
  final String title;
  final String subtitle;

  const TrailerCard({
    super.key,
    required this.width,
    required this.height,
    required this.poster,
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  poster,
                  width: Get.width,
                  height: Get.height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                      colors: [
                        AppColors.blackColor.withOpacity(0.0),
                        AppColors.blackColor.withOpacity(1.0)
                      ],
                      stops: const [0.0, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 70,
                          color: AppColors.whiteColor.withOpacity(0.7),
                        ),
                      ),
                    ),
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.textWhiteColor,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSoftGrayColor,
                          fontWeight: FontWeight.w400
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
