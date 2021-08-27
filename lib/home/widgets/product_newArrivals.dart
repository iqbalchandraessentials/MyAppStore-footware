import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class NewArrivalsItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/image_shoes.png',
            width: 120,
            height: 120,
            fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Footbal',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),),
              SizedBox(height: 6,),
              Text('Predator 20.3 Firm Ground',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),),
              SizedBox(height: 6,),
              Text('Rp.1,450,000',style: priceTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}