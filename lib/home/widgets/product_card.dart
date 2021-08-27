import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class ProductCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: primaryTextColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 30,),
        Image.asset('assets/image_shoes.png',
        width: 215,
        height: 150,
        fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Hiking',
            style: secondaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: regular,
            ),),
            SizedBox(height: 6,),
          Text('COURT VISION 2.0',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
          overflow: TextOverflow.ellipsis,
          ),
            SizedBox(height: 6,),
          Text('Rp.1,450,000',
          style: priceTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),)
          ],),
        )
      ],),
    );
  }
}