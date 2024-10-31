import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/watchlist/watchlist_controller.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/widgets/button/accent_button_widget.dart';
import '../../utils/widgets/button/main_button_widget.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<WatchlistController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.blackColor,
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Watchlist',
                          style: TextStyle(
                            color: AppColors.textWhiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        const SizedBox(width: 8,),
                        SvgPicture.asset('assets/images/icon_eyes.svg')
                      ],
                    ),
                    const SizedBox(height: 16,),
                    Row(
                      children: [
                        controller.currentIndex.value == 0
                            ? AccentButtonWidget(
                            width: 80,
                            height: 31,
                            text: 'Semua',
                            onPressed: () {
                              controller.currentIndex.value = 0;
                            }
                        )
                            : MainButtonWidget(
                            width: 80,
                            height: 31,
                            text: 'Semua',
                            onPressed: () {
                              controller.currentIndex.value = 0;
                            }),
                        const SizedBox(width: 8,),
                        controller.currentIndex.value == 1
                            ? AccentButtonWidget(
                            width: 80,
                            height: 31,
                            text: 'Film',
                            onPressed: () {
                              controller.currentIndex.value = 1;
                            }
                        )
                            : MainButtonWidget(
                            width: 80,
                            height: 31,
                            text: 'Film',
                            onPressed: () {
                              controller.currentIndex.value = 1;
                            }),
                        const SizedBox(width: 8,),
                        controller.currentIndex.value == 2
                            ? AccentButtonWidget(
                            width: 80,
                            height: 31,
                            text: 'Serial TV',
                            onPressed: () {
                              controller.currentIndex.value = 2;
                            }
                        )
                            : MainButtonWidget(
                            width: 80,
                            height: 31,
                            text: 'Serial TV',
                            onPressed: () {
                              controller.currentIndex.value = 2;
                            }),
                      ],
                    ),
                    const SizedBox(height: 32,),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          width: Get.width,
                          height: 241,
                          margin: const EdgeInsets.only(bottom: 24),
                          child: Card(
                            color: AppColors.mainColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    bottomLeft: Radius.circular(16)
                                  ),
                                  child: Image.asset(
                                    'assets/images/image_poster_dummy.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Family Plan',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: AppColors.textWhiteColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700
                                          ),
                                        ),
                                        const SizedBox(height: 8,),
                                        const Text(
                                          '15 Desember 2023',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.textSoftGrayColor
                                          ),
                                        ),
                                        const SizedBox(height: 16,),
                                        Container(
                                          width: 62,
                                          height: 24,
                                          padding: const EdgeInsets.symmetric(horizontal: 8),
                                          decoration: BoxDecoration(
                                            color: AppColors.yellowColor,
                                            borderRadius: BorderRadius.circular(999)
                                          ),
                                          child: const Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star_rounded,
                                                size: 16,
                                                color: AppColors.brownColor,
                                              ),
                                              Spacer(),
                                              Text(
                                                '56%',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: AppColors.brownColor
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 16,),
                                        const Text(
                                          'Dan Morgan adalah banyak hal: seorang suami setia, seorang ayah yang penyayang, seorang penjual mobil terkenal. Dia juga mantan pembunuh bayaran.',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: AppColors.textSoftGrayColor,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                              width: Get.width,
                                              height: 32,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: AppColors.redColor,
                                                  padding: const EdgeInsets.symmetric(
                                                    horizontal: 18
                                                  )
                                                ),
                                                onPressed: () {  },
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/images/icon_trashbin.svg'
                                                    ),
                                                    const Spacer(),
                                                    const Text(
                                                      'Hapus Watchlist',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                        color: AppColors.textWhiteColor
                                                      ),
                                                    )
                                                  ],
                                                ),

                                              ),
                                            ),
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
                      },
                    )
                  ],
                ),
              ),
            )
          );
        }
    );
  }
}
