import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/detail_chat_page.dart';
import 'package:flutter_application_1/home/profile_tile.dart';
import 'package:flutter_application_1/pages/cart_pages.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/page_sign_in.dart';
import 'package:flutter_application_1/pages/page_sign_up.dart';
import 'package:flutter_application_1/pages/products_page.dart';
import 'package:flutter_application_1/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashPage(),
        '/sign-in' : (context) => SignIn(),
        '/sign-up' : (context) => SignUp(),
        '/home' : (context) => MainPage(),
        '/detail-chat' : (context) => DetailChatPage(),
        '/edit-profile' : (context) => EditProfilePage(),
        '/product' : (context) => ProductPage(),
        '/cart' : (context) => CartPage(),
      },
    );
  }
}


