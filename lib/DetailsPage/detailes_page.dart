import 'package:flutter/material.dart';
import 'package:uidesign/DetailsPage/Details_Page_AppBar.dart';
import 'package:uidesign/DetailsPage/ProductImageView.dart';
import 'package:uidesign/DetailsPage/Product_Info.dart';
import 'package:uidesign/constants.dart';

import 'Details_Page_BottomBar.dart';

class ProductDetailsPage extends StatefulWidget {
  String img;
  String name;
  //String price;
  int index;

  ProductDetailsPage({this.img, this.name, this.index});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  )),
              height: MediaQuery.of(context).size.height - 130.0,
              child: Column(
                children: [
                  Details_Page_AppBar(),
                  SizedBox(
                    height: 60.0,
                  ),
                  ProductImageView(widget: widget),
                  SizedBox(
                    height: 60.0,
                  ),
                  Products_Color(),
                  SizedBox(
                    height: 60.0,
                  ),
                  Product_Info(widget: widget),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim',
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 720.0,
              left: 70.0,
              child: DetailsPage_BottomBar(),
            )
          ],
        ),
      ),
    );
  }
}

class Products_Color extends StatelessWidget {
  const Products_Color({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100.0, right: 100.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.grey,
          ),
          CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.red,
          ),
          CircleAvatar(
            radius: 8.0,
            backgroundColor: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
