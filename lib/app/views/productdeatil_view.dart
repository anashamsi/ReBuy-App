import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:readmore/readmore.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class ProductdeatilView extends StatelessWidget {
  const ProductdeatilView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          height: 60,

          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.DarkGrey,
                    shape: RoundedRectangleBorder(),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Save item",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.pink,
                    shape: RoundedRectangleBorder(),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    backbutton(),
                    Spacer(),
                    Text(
                      'ReBuy',
                      style: TextStyle(
                        fontFamily: 'Dosis',
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 260,
                    child: Image.asset(
                      'assets/images/miqimage.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                productDetails(),
                SizedBox(height: 20),
                Text(
                  'Similar products',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w800,
                  ),
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

Widget backbutton() {
  return OutlinedButton(
    onPressed: () {},
    style: OutlinedButton.styleFrom(
      fixedSize: const Size(46, 55),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: const BorderSide(width: 1),
      padding: EdgeInsets.zero,
    ),
    child: const Center(
      child: Icon(Icons.arrow_back_ios_new_outlined, size: 20),
    ),
  );
}

Widget productDetails() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shure podcast micro-\nphone',

                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  height: 0,

                  color: AppColors.black,
                ),
              ),
              Text(
                'PKR 24,999',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blue,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppColors.pink,
            radius: 25,
            child: Icon(Icons.message_rounded, color: Colors.white),
          ),
        ],
      ),
      SizedBox(height: 5),
      ReadMoreText(
        trimLines: 3,

        colorClickableText: Colors.pink,
        trimMode: TrimMode.Line,
        trimCollapsedText: 'Read more',
        trimExpandedText: 'Show less',
        style: TextStyle(color: AppColors.DarkGrey, fontSize: 10, height: 0),
        moreStyle: TextStyle(fontSize: 12),
        lessStyle: TextStyle(fontSize: 12),
        'The Shure SM7B reigns as king of studio recording for good reason: vocal recording and reproduction is clear and crisp, especially when recording in a more...',
      ),
      SizedBox(height: 5),
      Text(
        'Make: Shure | Year: 2020',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColors.DarkGrey,
        ),
      ),
      Row(
        children: [
          Text(
            'Within Warranty',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.DarkGrey,
            ),
          ),
          Icon(Icons.check, color: Colors.green),
          Text(
            '.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: AppColors.DarkGrey,
            ),
          ),
          SizedBox(width: 5),
          Text(
            'Original Packing',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.DarkGrey,
            ),
          ),
          Icon(Icons.close, color: Colors.red),
        ],
      ),
      SizedBox(height: 10),
      Container(
        width: 220,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(width: 3, color: AppColors.black),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.transparent,
                child: ClipOval(child: Image.asset('assets/images/Google.png')),
              ),
              SizedBox(width: 5),
              Text(
                'Search Details',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
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
  return Container(
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
                      style: TextStyle(
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
                      fontSize: 20,
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
  );
}
