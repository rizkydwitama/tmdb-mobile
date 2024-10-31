import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/routes/page_names.dart';
import 'package:tmdb_mobile/utils/widgets/button/accent_button_widget.dart';
import 'package:tmdb_mobile/utils/widgets/button/main_button_widget.dart';
import '../../../utils/theme/app_colors.dart';
import 'default_controller.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DefaultController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.blackColor,
          body: Stack(
            children: [
              Image.asset('assets/images/image_poster.png'),
              Container(
                width: Get.width,
                height: Get.height,
                decoration: BoxDecoration(
                    gradient: AppColors.loginLinearGradientColor
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
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
                    ),
                    const SizedBox(height: 32,),
                    const Text(
                      'Siap-siaplah untuk terjun ke dalam kisah-kisah terhebat di TV dan Film',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 32,),
                    AccentButtonWidget(
                        width: Get.width,
                        height: 39,
                        text: 'Daftar',
                        onPressed: () {
                          Get.toNamed(PageNames.REGISTER);
                        }
                    ),
                    const SizedBox(height: 16,),
                    MainButtonWidget(
                        width: Get.width,
                        height: 39,
                        text: 'Login',
                        onPressed: () {
                          Get.toNamed(PageNames.LOGIN);
                        }
                    ),
                    const SizedBox(height: 43,),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: AppColors.lineWhiteColor.withOpacity(0.4),
                            endIndent: 10,
                          ),
                        ),
                        const Text(
                          'atau',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textWhiteColor
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: AppColors.lineWhiteColor.withOpacity(0.4),
                            indent: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32,),
                    MainButtonWidget(
                        width: Get.width,
                        height: 39,
                        text: 'Masuk sebagai tamu',
                        onPressed: () => Get.toNamed(PageNames.BOTTOM_NAVBAR)
                    ),
                    const SizedBox(height: 32,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: 'Dengan membuat akun atau masuk, Anda setuju dengan ',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.whiteColor
                          ),
                          children: [
                            TextSpan(
                              text: 'Ketentuan Layanan',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor
                              ),
                            ),
                            TextSpan(
                              text: ' dan ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteColor
                              ),
                            ),
                            TextSpan(
                              text: 'Kebijakan Privasi',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.whiteColor
                              ),
                            ),
                            TextSpan(
                              text: ' kami',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.whiteColor
                              ),
                            ),
                          ]
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
