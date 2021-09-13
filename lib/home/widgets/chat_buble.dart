import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Buble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  Buble({
    this.isSender = false,
    this.text = '',
    this.hasProduct=false,
  });

  Widget productPreview() {
    return Container(
      width: 231,
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/image_shoes.png',
                    width: 70,
                  )),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'COURT VISION 2.0 SHOES',
                      style: primaryTextStyle,
                    ),
                    Text(
                      'Rp. 800.000',
                      style: priceTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 21,
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
                child: Text(
                  'Add to chart',
                  style: purpleTextStyle,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.poppins(
                      color: backgroundColor5,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        // agar ukuran lebar nya selebar layar
        width: double.infinity,
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            // pengkondisian apakah ada product nya ?
            hasProduct ? productPreview() : SizedBox(),
            Container(
              // untuk membuat lebar item max 60% dari lebar layar
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              // untuk membuat box di mobile
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 12 : 0),
                  topRight: Radius.circular(isSender ? 0 : 12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: isSender ? backgroundColor5 : backgroundColor4,
              ),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
