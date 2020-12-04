import 'package:flutter/material.dart';
import 'package:uidesign/DetailsPage/detailes_page.dart';

import '../constants.dart';

class Product_Info extends StatelessWidget {
  const Product_Info({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final ProductDetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 120.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.name}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '\$56',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
