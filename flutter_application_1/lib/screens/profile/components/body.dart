import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 15),
          Text(
            "Nama Lengkap",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
          ),
          SizedBox(height: 30),
          ProfileMenu(
            text: "Ganti PIN",
            icon: "assets/icons/Camera Icon.svg",
            press: () => {},
          ),
          // ProfileMenu(
          //   text: "Notifications",
          //   icon: "assets/icons/Bell.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Settings",
          //   icon: "assets/icons/Settings.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Help Center",
          //   icon: "assets/icons/Question mark.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "Log Out",
          //   icon: "assets/icons/Log out.svg",
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
