import 'package:flutter/material.dart';
import 'package:uidesign/constants.dart';
import 'package:uidesign/DetailsPage/detailes_page.dart';
import 'package:uidesign/model/product.dart';

class Product_List extends StatelessWidget {
  const Product_List({
    Key key,
    @required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          // shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetailsPage(
                    name: products[index].ftype + ' ' + products[index].pname,
                    img: products[index].img,
                  );
                }));
              },
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    //left: 15.0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15.0,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top: 39.0),
                            height: 150.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    // blurRadius: 5.0,
                                    offset: Offset(0, 15),
                                    blurRadius: 27,
                                    color: Colors.black12,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(20.0)),
                            width: 400.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 25.0,
                                        ),
                                        child: Text(
                                          products[index].ftype,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        products[index].pname,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0, left: 1.0),
                                  child: Container(
                                      width: 95.0,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        color: kSecondaryColor.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          products[index].price,
                                          style: TextStyle(
                                            //fontWeight: FontWeight.,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 28.0,
                      left: 200.0,
                      child: Hero(
                          tag: 'image' + '${index}',
                          child: Image.asset(products[index].img))),
                  Text('')
                ],
              ),
            );
          }),
    );
  }
}
