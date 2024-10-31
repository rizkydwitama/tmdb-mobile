import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_mobile/features/watchlist/watchlist_controller.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WatchlistController>(
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: Text('Watchlist Page'),
            ),
          );
        }
    );
  }
}
