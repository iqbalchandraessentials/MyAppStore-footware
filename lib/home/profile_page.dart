import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_application_1/providers/auth_provider.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    Widget header(context) {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              ClipOval(
                child: Image.network(
                  '${user.profilePhotoUrl}',
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '@${user.username}',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false);
                },
                child: Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                ),
              ),
            ],
          ),
        )),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            Icon(
              Icons.navigate_next_sharp,
              color: secondaryTextColor,
              size: 22,
            )
          ],
        ),
      );
    }

    Widget content(context) {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/edit-profile');
                  },
                  child: menuItem('Edit profile')),
              menuItem('Your oders'),
              menuItem('Help'),
              SizedBox(
                height: 30,
              ),
              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              menuItem('Privacy & Policy'),
              menuItem('Term of Service'),
              menuItem('Rate App'),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header(context),
        content(context),
      ],
    );
  }
}
