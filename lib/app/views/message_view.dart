import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              topRow(),
              SizedBox(height: 15),
              inputTextField("Search in messages"),
              SizedBox(height: 10),
              likeItem(),
            ],
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
        'Messages',
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

Widget likeItem() {
  final List<Map> productlist = [
    {
      "imagepath": 'assets/images/messageImages/image1.jpg',
      "title": "DJI Mavic Mini 2 | Paul Molive",
      "subtitle": "You: Does it come with an additional battery?",
      "date": "9:03 AM",
      "online": "true",
    },
    {
      "imagepath": 'assets/images/messageImages/image2.jpg',
      "title": "DJI Mavic Mini 2 | Petey Cruiser",
      "subtitle": "Petey: Sorry, I’m unlisting it",
      "date": "Yesterday 4:12 PM",
      "online": "false",
    },
    {
      "imagepath": 'assets/images/messageImages/image3.jpg',
      "title": "DJI Mavic Air 2 | Anna Sthesia",
      "subtitle": "Anna: I think you should go with Mavic Mini",
      "date": "15 Feb 21, 9:30 PM",
      "online": "true",
    },
    {
      "imagepath": 'assets/images/messageImages/image4.jpg',
      "title": "Apple AirPods Pro | Bob Frapples",
      "subtitle": "Bob: You’r welcome",
      "date": "25 Jan 21, 10:30 AM",
      "online": "false",
    },
    {
      "imagepath": 'assets/images/messageImages/image5.jpg',
      "title": "JBL Charge 2 Spea... | Greta Life",
      "subtitle": "Greta: Alright",
      "date": "20 Dec 20, 9:23 AM",
      "online": "true",
    },
    {
      "imagepath": 'assets/images/messageImages/image6.jpg',
      "title": "PlayStation Contro... You: 👍 ",
      "subtitle": "Greta: Alright",
      "date": "16 Nov 20, 7:53 AM",
      "online": "false",
    },
  ];

  return Column(
    children: List.generate(productlist.length, (index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Container(
          width: double.infinity,
          height: 90,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,

                      child: ClipOval(
                        child: Image.asset(
                          productlist[index]["imagepath"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: productlist[index]["online"] == "true"
                            ? Color(0xff3EB234)
                            : const Color.fromARGB(255, 156, 156, 156),
                      ),
                    ),
                  ],
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
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        productlist[index]["subtitle"],

                        maxLines: 2,

                        overflow: TextOverflow.ellipsis,

                        style: TextStyle(
                          height: 1,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  productlist[index]["date"],
                  style: TextStyle(
                    color: AppColors.DarkGrey,
                    fontWeight: FontWeight.w200,
                    fontSize: 8,
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
