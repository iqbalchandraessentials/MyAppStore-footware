import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class CartCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage('assets/image_shoes4.png'))
              ),
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Terrex Urban Low',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: semiBold
                ),),
                Text('Rp.800.000',
                style: priceTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14,
                ),)
              ],),
            ),
          Column(children: [
            Image.asset('assets/button_add.png',
            width: 16,),
            SizedBox(height: 2,),
            Text('2', style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 14,
            ),),
            SizedBox(height: 2,),
            Image.asset('assets/button_min.png',
            width: 16,),
          ],),
          ],),
          SizedBox(height: 12,),
          Row(
            children: [
            Image.asset('assets/icon_remove.png',
            width: 10,),
            SizedBox(width: 12,),
            Text('Remove', style: alertTextStyle.copyWith(
              fontWeight: light,
              fontSize: 12
            ),)
          ],),
      ],),
    );
  }
}