import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class EditProfile extends StatelessWidget {
  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text('Edit Profile', style: primaryTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal
      ),),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      header(),
    ],);
  }
}
