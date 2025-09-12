import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class MylistingView extends StatelessWidget {
  const MylistingView({super.key});

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
        'My Listings',
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
      "imagepath": 'assets/images/mylistingimages/image1.jpg',
      "title": "Jabra Wireless Earbuds",
      "date": "03 May 2021",
      "views": "Views: 1K",
      "price": "PKR 8,999",
    },
    {
      "imagepath": 'assets/images/mylistingimages/image2.jpg',
      "title": "MacBook Air",
      "date": "20 Apr 2021",
      "views": "Views: 1.8K",
      "price": "PKR 45,499",
    },
    {
      "imagepath": 'assets/images/mylistingimages/image3.jpg',
      "title": "Amazon Alexa",
      "date": "14 Apr 2021",
      "views": "Views: 2.2K",
      "price": "PKR 999",
    },
    {
      "imagepath": 'assets/images/mylistingimages/image4.jpg',
      "title": "LG Monitor",
      "date": "13 Apr 2021",
      "views": "Views: 2.6K",
      "price": "PKR 9,100",
    },
    {
      "imagepath": 'assets/images/mylistingimages/image5.jpg',
      "title": "Google Home Mini",
      "date": "12 Apr 2021",
      "views": "Views: 3.5K",
      "price": "PKR 1,299",
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        productlist[index]["title"],
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            productlist[index]["views"],
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: AppColors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: AppColors.black,
                                  size: 20,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            productlist[index]["price"],
                            style: TextStyle(
                              height: 2,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.blue,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            productlist[index]["date"],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: AppColors.lightPink,
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: CircleAvatar(
                              radius: 15,

                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                color: AppColors.black,
                              ),
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
        ),
      );
    }),
  );
}
