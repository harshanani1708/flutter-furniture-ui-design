import 'package:flutter/material.dart';

class Details_Page_AppBar extends StatelessWidget {
  const Details_Page_AppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        Padding(
          padding: const EdgeInsets.only(right: 240.0),
          child: Text('BACK'),
        ),
        Icon(Icons.shopping_bag_outlined),
      ],
    );
  }
}
