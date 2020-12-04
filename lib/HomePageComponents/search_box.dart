import 'package:flutter/material.dart';

import '../constants.dart';

class Search_Box extends StatelessWidget {
  const Search_Box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 450.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kBackgroundColor.withOpacity(0.4),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: kBackgroundColor,
              size: 25,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Search',
              style: TextStyle(
                color: kBackgroundColor,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
