import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/bottom_navbar/bottom_navbar_controller.dart';
import 'package:tmdb_mobile/features/home/home_page.dart';
import 'package:tmdb_mobile/features/profile/profile_page.dart';
import 'package:tmdb_mobile/features/watchlist/watchlist_page.dart';
import '../../utils/theme/app_colors.dart';
import '../searching/searching_page.dart';

class BottomNavbarPage extends StatelessWidget {
  const BottomNavbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<BottomNavbarController>(
      builder: (controller) {
        return Scaffold(
          body: PopScope(
            canPop: controller.canPop.value,
            child: IndexedStack(
              index: controller.currentIndex.value,
              children: const [
                HomePage(),
                WatchlistPage(),
                SearchingPage(),
                ProfilePage()
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.blackColor,
            selectedItemColor: AppColors.textWhiteColor,
            unselectedItemColor: AppColors.textDarkGrayColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.currentIndex.value == 0?
                      'assets/images/icon_home.svg'
                          :
                      'assets/images/icon_home_grey.svg'
                  ),
                  label: 'Beranda',
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.currentIndex.value == 1?
                      'assets/images/icon_watchlist.svg'
                          :
                      'assets/images/icon_watchlist_grey.svg'
                  ),
                  label: 'Watchlist',
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.currentIndex.value == 2?
                      'assets/images/icon_search.svg'
                          :
                      'assets/images/icon_search_grey.svg'
                  ),
                  label: 'Search',
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                      controller.currentIndex.value == 3?
                      'assets/images/icon_profile.svg'
                          :
                      'assets/images/icon_profile_grey.svg'
                  ),
                  label: 'Profile',
              ),
            ],
            onTap: (int index) {
              controller.currentIndex.value = index;
            },
            currentIndex: controller.currentIndex.value,
          )
        );
      },
    );
  }
}
