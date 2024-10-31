import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class MovieCardPortrait extends StatelessWidget {
  final String poster;
  final String title;
  final String date;

  const MovieCardPortrait({
    super.key,
    required this.title,
    required this.date,
    required this.poster
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 336,
      child: Card(
          color: AppColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)
                ),
                child: Image.asset(
                  poster,
                  height: 241,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: AppColors.textWhiteColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 14
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      date,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textSoftGrayColor
                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
