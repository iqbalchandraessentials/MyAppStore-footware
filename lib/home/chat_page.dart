import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/widgets/chat_tile.dart';
import 'package:flutter_application_1/theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Massage Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    // Widget emptychat() {
    //   return Expanded(
    //     child: Container(
    //         width: double.infinity,
    //         color: backgroundColor3,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Image.asset(
    //               'assets/icon_headset.png',
    //               width: 80,
    //             ),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Text(
    //               'Opss no message yet?',
    //               style: primaryTextStyle.copyWith(
    //                 fontSize: 16,
    //                 fontWeight: medium,
    //               ),
    //             ),
    //             SizedBox(
    //               height: 12,
    //             ),
    //             Text(
    //               'You have never done a transaction',
    //               style: subtitleTextStyle.copyWith(
    //                 fontSize: 14,
    //                 fontWeight: regular,
    //               ),
    //             ),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             Container(
    //               height: 44,
    //               child: TextButton(
    //                 style: TextButton.styleFrom(
    //                     padding: EdgeInsets.symmetric(
    //                       horizontal: 24,
    //                       vertical: 10,
    //                     ),
    //                     backgroundColor: primaryColor,
    //                     shape: RoundedRectangleBorder(
    //                       borderRadius: BorderRadius.circular(12),
    //                     )),
    //                 onPressed: () {
    //                   Navigator.pushNamed(context, '/home');
    //                 },
    //                 child: Text(
    //                   'Explore Store',
    //                   style: primaryTextStyle.copyWith(
    //                     fontSize: 16,
    //                     fontWeight: medium,
    //                   ),
    //                 ),
    //               ),
    //             )
    //           ],
    //         )),
    //   );
    // }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              ChatTile(),
              ChatTile(),
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        // emptychat(),
        content(),
      ],
    );
  }
}
