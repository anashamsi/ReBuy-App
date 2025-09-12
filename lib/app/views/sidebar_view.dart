import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class SidebarView extends StatelessWidget {
  const SidebarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'ReBuy',
                    style: TextStyle(
                      fontFamily: 'Dosis',
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: AppColors.black,
                    ),
                  ),
                  Spacer(),
                  closeButton(),
                ],
              ),
              Spacer(),

              menuButton(
                Icons.person,
                "My Account",
                "Edit you details, account settings ",
              ),
              SizedBox(height: 10),
              menuButton(
                Icons.shopping_bag,
                "My Orders",
                "View all your orders",
              ),
              SizedBox(height: 10),
              menuButton(
                Icons.view_list,
                "My Listings",
                "View your product listing for sale",
              ),
              SizedBox(height: 10),
              menuButton(
                Icons.favorite_outline,
                "Liked Items",
                "See the products you have wishlisted",
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Feedback',
                        style: TextStyle(color: AppColors.black, fontSize: 15),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1.5, color: AppColors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Sign out',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget menuButton(IconData _icon, String title, String subtitle) {
  return InkWell(
    onTap: () {},
    child: Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xffd4e4e6),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Icon(_icon, color: AppColors.black, size: 35),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    height: 0,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 1,
                  style: TextStyle(
                    height: 0,
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget closeButton() {
  return IconButton(
    onPressed: () {},
    icon: Icon(Icons.close, color: AppColors.black, size: 40),
  );
}
