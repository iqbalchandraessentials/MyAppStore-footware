import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
      );
    }

    Widget itemProduct() {
      return Container(
        width: 315,
        height: 100,
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes6.png',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terrex Urban Low',
                    style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Rp.800.000',
                    style: priceTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
            Text(
              '2 items',
              style: secondaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    Widget addressDetail() {
      return Container(
        // height: 186,
        width: 315,
        margin: EdgeInsets.only(top: defaultMargin),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address Details',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_store_location.png',
                      width: 40,
                    ),
                    Image.asset(
                      'assets/icon_line.png',
                      height: 30,
                    ),
                    Image.asset(
                      'assets/icon_your_address.png',
                      width: 40,
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your Address',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: light),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Lubang Buaya',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget listPayment(String text, String price) {
      return Container(
        margin: EdgeInsets.only(top: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                  fontSize: 12, fontWeight: regular),
            ),
            Text(
              price,
              style:
                  primaryTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget paymentSummary() {
      return Container(
        width: 315,
        // height: 198,
        margin: EdgeInsets.only(top: defaultMargin),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            listPayment('Product Quantity', '2 Items'),
            listPayment('Product Price', '\$575.96'),
            listPayment('Shipping', 'FREE'),
            SizedBox(
              height: 11,
            ),
            Divider(
              thickness: 0.4,
              color: Color(0xff2E3141),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                    style: priceTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 14,
                    )),
                Text(
                  '\$575.96',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: 315,
        height: 50,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/checkout-success", (route) => false);
          },
          child: Text(
            'Checkout Now',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: defaultMargin, vertical: defaultMargin),
          children: [
            Text(
              'List Items',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            itemProduct(),
            itemProduct(),
            addressDetail(),
            paymentSummary(),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.2,
              color: secondaryTextColor,
            ),
            customBottomNav(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar:
          PreferredSize(child: header(), preferredSize: Size.fromHeight(60)),
      body: content(),
    );
  }
}
