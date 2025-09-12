import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebuyapp/app/controllers/home_controller.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                topRow(),
                SizedBox(height: 20),
                inputTextField('Search for books, guitar and more...'),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'New arrivals',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View more',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.DarkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                productCards(),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Recently viewed',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View more',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.DarkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                recenetViewCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget topRow() {
  return Row(
    children: [
      profileIcon(),
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hey Alice',
            textHeightBehavior: TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
            ),
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
          ),
          Text(
            'Welcome back!',
            textHeightBehavior: TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
            ),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: AppColors.pink,
            ),
          ),
        ],
      ),
      Spacer(),
      Expanded(
        child: IconButton(
          onPressed: () {
            Get.toNamed("/sidebar");
          },
          icon: Icon(CupertinoIcons.bars, color: AppColors.black, size: 30),
        ),
      ),
    ],
  );
}

Widget profileIcon() {
  return CircleAvatar(
    radius: 40,
    backgroundColor: AppColors.black,
    child: CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4),
              image: const DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: AppColors.grey,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.menu, size: 20, color: AppColors.DarkGrey),
          ),
        ],
      ),
    ),
  );
}

Widget inputTextField(String name, [bool? obsecure]) {
  return TextField(
    obscureText: obsecure ?? false,
    decoration: InputDecoration(
      filled: true,
      suffixIcon: Icon(Icons.search_outlined, color: AppColors.DarkGrey),
      fillColor: AppColors.grey,
      hintText: name,
      hintStyle: TextStyle(
        color: AppColors.DarkGrey,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),

      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
    ),
  );
}

Widget productCards() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        buildCard(
          imagePath: 'assets/images/toyimage.jpg',
          title: 'Batman Toy',
          yearBrand: '2018 | FunSkool',
          price: 'Rs 899',
        ),
        SizedBox(width: 16),
        buildCard(
          imagePath: 'assets/images/bookimage.jpg',
          title: 'You Are You',
          yearBrand: '2020 | H&C',
          price: 'Rs 299',
        ),
        SizedBox(width: 16),
        buildCard(
          imagePath: 'assets/images/miqimage.jpg',
          title: 'Shuru Mic',
          yearBrand: '2020 | Shuru',
          price: 'Rs 24,999',
        ),
      ],
    ),
  );
}

Widget recenetViewCards() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        buildCard(
          imagePath: 'assets/images/tabletimage1.jpg',
          title: 'Amazon Kindle',
          yearBrand: '2019 | Amazon',
          price: 'Rs 5999',
        ),
        SizedBox(width: 16),
        buildCard(
          imagePath: 'assets/images/tabletimage2.jpg',
          title: 'Amazon Kindle',
          yearBrand: '2020 | Amazon',
          price: 'Rs 7999',
        ),
        SizedBox(width: 16),
        buildCard(
          imagePath: 'assets/images/tabletimage1.jpg',
          title: 'Amazon Kindle',
          yearBrand: '2019 | Amazon',
          price: 'Rs 5999',
        ),
      ],
    ),
  );
}

Widget buildCard({
  required String imagePath,
  required String title,
  required String yearBrand,
  required String price,
}) {
  return InkWell(
    onTap: () {
      Get.toNamed("/productview");
    },
    child: Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.asset(
              imagePath,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,

                        style: TextStyle(
                          height: 0,
                          fontSize: 18,

                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        yearBrand,
                        style: TextStyle(
                          color: AppColors.lightPink,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
