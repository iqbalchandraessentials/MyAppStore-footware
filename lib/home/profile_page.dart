import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ProfilePage extends StatelessWidget {
  Widget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: SafeArea(
          child: Container(
        padding: EdgeInsets.all(30),
        child: Row(
          children: [
            Image.asset(
              'assets/image_profile.png',
              width: 64,
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Alex',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '@iqbal_chandra',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/button_exit.png',
              width: 20,
            ),
          ],
        ),
      )),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        color: backgroundColor3,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text('Account', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 16,),
            Row(
              children: [
                Text('Edit Profile',style: secondaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),),
              Spacer(),
              Icon(Icons.navigate_next_sharp, color: secondaryTextColor, size: 22,)
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(),
        content(),
      ],
    );
  }
}
