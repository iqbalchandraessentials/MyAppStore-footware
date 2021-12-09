import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/detail_chat_page.dart';
import 'package:flutter_application_1/home/profile_tile.dart';
import 'package:flutter_application_1/pages/cart_pages.dart';
import 'package:flutter_application_1/pages/checkout_pages.dart';
import 'package:flutter_application_1/pages/checkout_success.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_application_1/pages/page_sign_in.dart';
import 'package:flutter_application_1/pages/page_sign_up.dart';
import 'package:flutter_application_1/pages/products_page.dart';
import 'package:flutter_application_1/pages/splash_page.dart';
import 'package:flutter_application_1/providers/auth_provider.dart';
import 'package:flutter_application_1/providers/product_provider.dart';
import 'package:flutter_application_1/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // untuk
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => WishlistProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUp(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccess(),
        },
      ),
    );
  }
}
