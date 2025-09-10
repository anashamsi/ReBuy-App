import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/bottom_navigation_controller.dart';
import 'package:rebuyapp/app/views/home_view.dart';
import 'package:rebuyapp/app/views/explore_view.dart';
import 'package:rebuyapp/app/views/likeitem_view.dart';
import 'package:rebuyapp/app/views/message_view.dart';

class MainWrapper extends StatelessWidget {
  final BottomNavigationController controller = Get.put(
    BottomNavigationController(),
  );

  final List<Widget> pages = [
    HomeView(),
    ExploreView(),
    LikeitemView(),
    MessageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[controller.selectedIndex.value],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorites",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
