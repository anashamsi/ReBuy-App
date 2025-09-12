import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rebuyapp/app/controllers/myaccount_controller.dart';
import 'package:rebuyapp/app/utils/colors.dart';

class MyaccountView extends GetView<MyaccountController> {
  const MyaccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topRow(),
                SizedBox(height: 40),

                Text(
                  'My account',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Name:',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                inputTextField("Alice Eve", Icon(Icons.edit_outlined)),
                SizedBox(height: 15),
                Text(
                  'Email:',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                inputTextField(
                  "alice.eve@gmail.com",
                  Icon(Icons.edit_outlined),
                ),
                SizedBox(height: 15),
                Text(
                  'Phone:',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                inputTextField("+1 561-230-0033", Icon(Icons.edit_outlined)),
                SizedBox(height: 15),
                Text(
                  'Address:',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                inputTextField(
                  "Alice Eve 2074, Half and Half Drive Hialeah, Florida - 33012 P  h: +1 561-230-0033",
                  Icon(Icons.edit_outlined),
                ),
                SizedBox(height: 20),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(width: 3, color: AppColors.black),
                    ),
                  ),
                  onPressed: () {},
                  label: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 25,
                    color: AppColors.black,
                  ),
                ),
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
            'Alice Eve',
            textHeightBehavior: TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
            ),
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: AppColors.pink,
            ),
          ),
          Text(
            'alice.eve@gmail.com',
            textHeightBehavior: TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
            ),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w300,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      Spacer(),
      Expanded(
        child: IconButton(
          onPressed: () {},
          icon: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.close, color: AppColors.black, size: 40),
          ),
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

Widget inputTextField(String name, Icon icon, [bool? obsecure]) {
  return TextField(
    obscureText: obsecure ?? false,
    decoration: InputDecoration(
      filled: true,
      suffixIcon: icon,

      fillColor: AppColors.grey,
      hintText: name,

      hintStyle: TextStyle(
        color: AppColors.DarkGrey,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),

      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
