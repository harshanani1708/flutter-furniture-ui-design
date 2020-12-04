import 'package:flutter/material.dart';
import 'package:uidesign/DetailsPage/detailes_page.dart';

class ProductImageView extends StatelessWidget {
  const ProductImageView({
    Key key,
    @required this.widget,
    //@required this.widget,
  }) : super(key: key);

  final ProductDetailsPage widget;
  //final ProductDetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 14.0,
          left: 5.0,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 119.0,
          ),
        ),
        Positioned(
          // bottom: 5.0,
          //left: 2.0,
          child: Hero(
            tag: 'image' + '${widget.index}',
            child: Image.asset(
              '${widget.img}',
              height: 250.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(''),
      ],
    );
  }
}
