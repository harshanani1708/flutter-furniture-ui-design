import 'package:flutter/material.dart';
import 'package:uidesign/HomePageComponents/products_screen.dart';
import 'package:uidesign/HomePageComponents/search_box.dart';
import 'package:uidesign/HomePageComponents/typesList.dart';

import 'constants.dart';
import 'model/product.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = getProductList();

  List<String> list = ['All', 'Sofa', 'Park bench', 'Armchair'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: App_Bar(),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 18.0, right: 20.0),
              child: Search_Box(),
            ),
            SizedBox(
              height: 35.0,
            ),
            Types(list: list),
            Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                  top: 100.0,
                  child: Container(
                    height: 450.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35.0),
                          topRight: Radius.circular(35.0)),
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 530,
                    color: Colors.transparent,
                    child: Product_List(products: products)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class App_Bar extends StatelessWidget {
  const App_Bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Dashboard',
          style: TextStyle(
            color: kBackgroundColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          Icons.notifications_none_outlined,
          color: kBackgroundColor,
          size: 30.0,
        ),
      ],
    );
  }
}
