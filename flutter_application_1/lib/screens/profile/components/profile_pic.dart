import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      width: 145,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/Profile Image.png"),
      ),
    );
  }
}
