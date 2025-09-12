import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                topRow(),
                SizedBox(height: 20),
                inputTextField("Search for books, guitar and more..."),
                SizedBox(height: 15),
                filterButton(),
                SizedBox(height: 15),
                productCard(
                  "assets/images/guitarimage.jpg",
                  "Cordoba Mini Guitar",
                  "Make: Cordoba | Year: 2020",
                  "PKR 25,000",
                  "assets/images/cliffprofile.jpg",
                  "Cliff Hanger",
                  "El Dorado",
                ),
                SizedBox(height: 10),
                productCard(
                  "assets/images/mobilephoto.jpg",
                  "Smart Mobile",
                  "Make: Samsung | Year: 2022",
                  "PKR 45,000",
                  "assets/images/frankprofile.jpg",
                  "Frank N. Stein",
                  "Shangri La",
                ),
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
        'Explore',
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

Widget filterButton() {
  final List<String> filter = [
    "Books",
    "Game",
    "Music",
    "Camera",
    "Pen",
    "Laptop",
  ];
  return SizedBox(
    height: 35,

    child: ListView.builder(
      itemCount: filter.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(right: 8),
            width: 90,
            height: 30,

            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                filter[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

Widget productCard(
  String imagepath,
  String title,
  String subtitle,
  String price,
  String profilepath,
  String profilename,
  String profilesubname,
) {
  return Card(
    child: Container(
      width: double.infinity,
      height: 431,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    backgroundImage: AssetImage(profilepath),
                  ),
                  SizedBox(width: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        profilename,
                        style: TextStyle(
                          height: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        profilesubname,
                        style: TextStyle(
                          height: 0,
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
            ),
          ),

          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 298,
              color: Color.fromARGB(255, 248, 225, 235),
              child: ClipRect(
                child: Image.asset(imagepath, fit: BoxFit.contain),
              ),
            ),
          ),

          Positioned(
            right: 10,
            bottom: 80,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Color.fromARGB(255, 250, 209, 227),
              child: Icon(Icons.favorite_outline, color: AppColors.pink),
            ),
          ),

          Positioned(
            right: 10,
            bottom: 5,
            left: 10,
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          height: 1,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    price,
                    style: TextStyle(
                      height: 2,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
