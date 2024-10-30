import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/utils/widgets/button/accent_button_widget.dart';
import '../../../utils/theme/app_colors.dart';
import '../../../utils/widgets/button/white_button_widget.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.blackColor,
          resizeToAvoidBottomInset: false,
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
                    SizedBox(
                      width: Get.width,
                      height: 39,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textSoftGrayColor
                        ),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                            hintText: 'Alamat Email',
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
                    ),
                    const SizedBox(height: 24,),
                    SizedBox(
                      width: Get.width,
                      height: 39,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textSoftGrayColor
                        ),
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                            hintText: 'Password',
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
                    ),
                    const SizedBox(height: 24,),
                    AccentButtonWidget(
                        width: Get.width,
                        height: 39,
                        text: 'Login',
                        onPressed: () {}
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
                    WhiteButtonWidget(
                        width: Get.width,
                        height: 39,
                        text: 'Masuk dengan Google',
                        asset: 'assets/images/icon_google.svg',
                        onPressed: () {}
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
          )
        );
      },
    );
  }
}
