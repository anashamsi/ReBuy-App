import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class MyordersView extends StatelessWidget {
  const MyordersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [topRow(), SizedBox(height: 10), likeItem()],
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
      fixedSize: Size(20, 60),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      side: BorderSide(width: 1),
      padding: EdgeInsets.zero,
    ),
    child: Center(child: Icon(Icons.arrow_back_ios_new_outlined, size: 20)),
  );
}

Widget topRow() {
  return Row(
    children: [
      backbutton(),
      SizedBox(width: 10),
      Text(
        'My Orders',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
      ),
      Spacer(),
      Expanded(
        child: IconButton(
          onPressed: () {},
          icon: Icon(CupertinoIcons.bars, color: AppColors.black, size: 30),
        ),
      ),
    ],
  );
}

Widget likeItem() {
  final List<Map> productlist = [
    {
      "imagepath": 'assets/images/LikeItemImages/image1.jpg',
      "title": "Apple AirPods Pro",
      "date": "21 Jan 2021",
      "price": "PKR 8,999",
      "rate": "false",
    },
    {
      "imagepath": 'assets/images/LikeItemImages/image2.jpg',
      "title": "JBL Charge 2 Speaker",
      "date": "20 Dec 2020",
      "price": "PKR 6,499",
      "rate": "false",
    },
    {
      "imagepath": 'assets/images/LikeItemImages/image3.jpg',
      "title": "PlayStation Controller",
      "date": "14 Nov 2020",
      "price": "PKR 1,299",
      "rate": "false",
    },
    {
      "imagepath": 'assets/images/LikeItemImages/image4.jpg',
      "title": "Nexus Mountain Bike",
      "date": "05 Oct 2020",
      "price": "PKR 9,100",
      "rate": "true",
    },
    {
      "imagepath": 'assets/images/LikeItemImages/image5.jpg',
      "title": "Wildcraft Ranger Tent",
      "date": "30 Sep 2020",
      "price": "PKR 999",
      "rate": "false",
    },
  ];

  return Column(
    children: List.generate(productlist.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          height: 114,
          decoration: BoxDecoration(
            color: Color(0xffd4e4e6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      productlist[index]["imagepath"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 7),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productlist[index]["title"],
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        productlist[index]["date"],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: AppColors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            productlist[index]["price"],
                            style: TextStyle(
                              height: 2,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),
                          Spacer(),
                          productlist[index]["rate"] == "false"
                              ? Container(
                                  width: 80,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: AppColors.black,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Rate now',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                              : Row(
                                  children: [
                                    Text(
                                      'You rated 5',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: AppColors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.star,
                                      color: const Color.fromARGB(
                                        255,
                                        222,
                                        200,
                                        2,
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }),
  );
}
