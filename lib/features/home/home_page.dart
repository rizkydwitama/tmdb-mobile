import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/home/home_controller.dart';
import 'package:tmdb_mobile/routes/page_names.dart';
import 'package:tmdb_mobile/utils/widgets/button/accent_button_widget.dart';
import 'package:tmdb_mobile/utils/widgets/button/main_button_widget.dart';
import 'package:tmdb_mobile/utils/widgets/card/movie_card_portrait.dart';
import 'package:tmdb_mobile/utils/widgets/card/trailer_card.dart';

import '../../utils/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.blackColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Selamat Pagi',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.textSoftGrayColor
                                  ),
                                ),
                                const SizedBox(width: 4,),
                                SvgPicture.asset('assets/images/icon_waving_hand.svg')
                              ],
                            ),
                            const Text(
                              'Yuk santai, cari film menarik!',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textWhiteColor
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        AccentButtonWidget(
                            width: 56,
                            height: 27,
                            text: 'Login',
                            onPressed: () => Get.toNamed(PageNames.LOGIN)
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Kategori',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textWhiteColor
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Row(
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
                  ),
                  const SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Trending Sekarang',
                          style: TextStyle(
                            color: AppColors.textWhiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        const Spacer(),
                        AccentButtonWidget(
                            width: 114,
                            height: 28,
                            text: 'Lihat Semua',
                            iconRight: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () {}
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24,),
                  SizedBox(
                    height: 340,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 24, right: 8),
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: MovieCardPortrait(
                              title: 'The Family Plan',
                              date: '15 Desember 2023',
                              poster: 'assets/images/image_poster_dummy.png'
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Container(
                    width: Get.width,
                    height: 277,
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    decoration: const BoxDecoration(
                      color: AppColors.mainColor
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Trailer Sekarang',
                                style: TextStyle(
                                    color: AppColors.textWhiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              const Spacer(),
                              AccentButtonWidget(
                                  width: 114,
                                  height: 28,
                                  text: 'Lihat Semua',
                                  iconRight: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 13,
                                    color: AppColors.whiteColor,
                                  ),
                                  onPressed: () {}
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 180,
                          child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(left: 24, right: 8),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: TrailerCard(
                                  width: 320,
                                  height: Get.height,
                                  poster: 'assets/images/image_trailer_dummy.png',
                                  title: 'The American Society of Magical Negroes',
                                  subtitle: 'Official Trailer',
                                )
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Populer Bulan Ini',
                          style: TextStyle(
                              color: AppColors.textWhiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        const Spacer(),
                        AccentButtonWidget(
                            width: 114,
                            height: 28,
                            text: 'Lihat Semua',
                            iconRight: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () {}
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24,),
                  SizedBox(
                    height: 340,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 24, right: 8),
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: MovieCardPortrait(
                              title: 'The Family Plan',
                              date: '15 Desember 2023',
                              poster: 'assets/images/image_poster_dummy.png'
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Baru Rilis',
                          style: TextStyle(
                              color: AppColors.textWhiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                          ),
                        ),
                        const Spacer(),
                        AccentButtonWidget(
                            width: 114,
                            height: 28,
                            text: 'Lihat Semua',
                            iconRight: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                              color: AppColors.whiteColor,
                            ),
                            onPressed: () {}
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24,),
                  SizedBox(
                    height: 340,
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 24, right: 8),
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: MovieCardPortrait(
                              title: 'The Family Plan',
                              date: '15 Desember 2023',
                              poster: 'assets/images/image_poster_dummy.png'
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24,),
                ],
              ),
            ),
          )
        );
      },
    );
  }
}
