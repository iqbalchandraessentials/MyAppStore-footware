import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter_application_1/providers/wishlist_provider.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  @override
  final ProductModel product;
  ProductPage(this.product);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
  ];

  List familiarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
    'assets/image_shoes6.png',
    'assets/image_shoes2.png',
    'assets/image_shoes8.png',
    'assets/image_shoes7.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    Future<void> showSuccessDialog() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => Container(
                width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                child: AlertDialog(
                    backgroundColor: backgroundColor3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/icon_success.png',
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Hurray :)',
                            style: primaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: semiBold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Item added successfully',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: regular),
                          ),
                          Container(
                            height: 44,
                            width: 154,
                            margin: EdgeInsets.only(top: 20),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/cart');
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                                child: Text(
                                  'View My Cart',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: medium,
                                  ),
                                )),
                          )
                        ],
                      ),
                    )),
              ));
    }

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
            color: currentIndex == index ? priceColor : secondaryColor,
            borderRadius: BorderRadius.circular(10)),
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(image: AssetImage(imageUrl))),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 25, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cart');
                  },
                  child: Icon(
                    Icons.shopping_bag,
                    color: backgroundColor1,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CarouselSlider(
            items: widget.product.galleries!
                .map(
                  (image) => Image.network(
                    image.url!,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.product.galleries!.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 17),
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name!,
                        style: primaryTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        widget.product.category!.name!,
                        style: secondaryTextStyle.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    wishlistProvider.setProduct(widget.product);

                    if (wishlistProvider.isWishlist(widget.product)) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: secondaryColor,
                          content: Text(
                            'Has been added to the Wishlist',
                            textAlign: TextAlign.center,
                          )));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: alertColor,
                          content: Text(
                            'Has been removed from the Wishlist',
                            textAlign: TextAlign.center,
                          )));
                    }
                  },
                  child: Image.asset(
                    wishlistProvider.isWishlist(widget.product)
                        ? 'assets/button_wishlist_blue.png'
                        : 'assets/button_wishlist.png',
                    width: 46,
                  ),
                ),
              ],
            ),

            // NOTE : PRICE

            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price starts from',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Rp.${widget.product.price}',
                    style: priceTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: DESCRIPTION
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '${widget.product.description}',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),

            // NOTE : FAMILIAR SHOES SECTION
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fimiliar Shoes',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: familiarShoes
                    .map(
                      (e) => familiarShoesCard(e),
                    )
                    .toList(),
              ),
            ),

            // NOTE : ADD TO CART AND CHAT BUTTON

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/detail-chat');
                    },
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/button_chat.png')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                          onPressed: () {
                            showSuccessDialog();
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Add To Cart',
                            style: primaryTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: semiBold,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
