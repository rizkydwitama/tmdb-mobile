import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/searching/searching_controller.dart';

class SearchingPage extends StatelessWidget {
  const SearchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: Text('Search Page'),
            ),
          );
        }
    );
  }
}
