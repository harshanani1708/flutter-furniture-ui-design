import 'package:flutter/material.dart';

import '../constants.dart';

class Types extends StatelessWidget {
  const Types({
    Key key,
    @required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 27.0, right: 15.0),
            child: Container(
              child: Text(
                ' ${list[index]}',
                style: TextStyle(
                  color: kBackgroundColor,
                  fontSize: 18.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
