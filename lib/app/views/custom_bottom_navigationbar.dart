import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuyapp/app/utils/colors.dart';
import 'package:rebuyapp/app/views/explore_view.dart';
import 'package:rebuyapp/app/views/home_view.dart';
import 'package:rebuyapp/app/views/likeitem_view.dart';
import 'package:rebuyapp/app/views/message_view.dart';

class CustomBottomNavView extends StatelessWidget {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomeView(),
    ExploreView(),
    LikeitemView(),
    MessageView(),
  ];

  final List<IconData> icons = [
    Icons.home_outlined,
    Icons.explore_outlined,
    Icons.favorite_border,
    Icons.chat_bubble_outline,
  ];

  CustomBottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

      return Scaffold(
        extendBody: true,
        body: pages[selectedIndex.value],

        floatingActionButton: isKeyboardOpen
            ? null
            : Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.camera_alt, color: Colors.white, size: 30),
                  onPressed: () {},
                ),
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          color: AppColors.black,
          child: Container(
            height: 70,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavItem(0, icons[0]),
                _buildNavItem(1, icons[1]),
                const SizedBox(width: 40), // space for the FAB
                _buildNavItem(2, icons[2]),
                _buildNavItem(3, icons[3]),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildNavItem(int index, IconData icon) {
    return GestureDetector(
      onTap: () => selectedIndex.value = index,
      child: Obx(() {
        final isSelected = selectedIndex.value == index;
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.blue : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: 28),
        );
      }),
    );
  }
}
