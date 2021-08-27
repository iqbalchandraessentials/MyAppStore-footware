import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

Widget header() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Login',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            )),
        SizedBox(
          height: 2,
        ),
        Text('Sign In to Continue',
            style:
                subtitleTextStyle.copyWith(fontSize: 13, fontWeight: regular))
      ],
    ),
  );
}

Widget emailInput() {
  return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_email.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Your Email Address',
                            hintStyle: subtitleTextStyle)),
                  ),
                ],
              ),
            ),
          )
        ],
      ));
}

Widget passwordInput() {
  return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_password.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                        style: primaryTextStyle,
                        // untuk encrypt text
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: '***********',
                            hintStyle: subtitleTextStyle)),
                  ),
                ],
              ),
            ),
          )
        ],
      ));
}

Widget signInButton({context}) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.only(top: 30),
    child: TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(
        'Sign In',
        style: priceTextStyle.copyWith(
          color: primaryTextColor,
          fontSize: 16,
          fontWeight: medium,
        ),
      ),
    ),
  );
}

Widget build(context) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(margin: EdgeInsets.only(bottom: 20.0)),
            Container(margin: EdgeInsets.only(bottom: 20.0)),
          ],
        ),
      ),
    ),
  );
}

Widget footer({context}) {
  return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account ? ",
            style: subtitleTextStyle.copyWith(fontSize: 12),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign Up',
              style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
            ),
          )
        ],
      ));
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  emailInput(),
                  passwordInput(),
                  signInButton(context: context),
                  Spacer(),
                  footer(context: context)
                ],
              )),
        ));
  }
}
