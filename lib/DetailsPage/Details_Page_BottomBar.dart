import 'package:flutter/material.dart';

import '../constants.dart';

class DetailsPage_BottomBar extends StatelessWidget {
  const DetailsPage_BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.chat_bubble_outline,
              color: kBackgroundColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Text(
              'Chat',
              style: TextStyle(color: kBackgroundColor),
            ),
          ),
          SizedBox(
            width: 80.0,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: kBackgroundColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Text(
              'Add to cart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
