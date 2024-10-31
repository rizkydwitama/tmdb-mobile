import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/profile/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: Text('Profile Page'),
            ),
          );
        }
    );
  }
}
