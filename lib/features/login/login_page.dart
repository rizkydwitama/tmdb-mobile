import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        return Scaffold();
      },
    );
  }
}
