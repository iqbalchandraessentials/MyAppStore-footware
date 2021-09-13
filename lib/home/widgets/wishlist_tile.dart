import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class WishlistTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
    child: Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Container(
        width: 315,
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/image_shoes8.png', 
                  width: 60,
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
                        fontWeight: FontWeight.w400,
                      ),
                      // overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2,),
                      Text('Rp. 800.000', style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),)
                    ],
                  ),
                ),
                Spacer(),
                Image.asset('assets/button_wishlist_blue.png',
                width: 34,
                ),
                
              ],
            )
          ],
        ),
      ),
    ),
    );
    
  }
}