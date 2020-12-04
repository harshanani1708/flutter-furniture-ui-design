import 'package:flutter/material.dart';

class Product {
  String ftype;
  String pname;
  String img;
  String price;
  String desc;

  Product({this.ftype, this.img, this.price, this.pname, this.desc});
}

List<Product> list1 = [
  new Product(
    ftype: 'Classic Leather',
    pname: 'Arm Chair',
    img: 'lib/assets/Item_1.png',
    price: '56\$',
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  new Product(
    ftype: 'Poppy Plastic',
    pname: 'Tub Chair',
    img: 'lib/assets/Item_2.png',
    price: '56\$',
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  new Product(
    ftype: 'Bar Stool',
    pname: 'Chair',
    img: 'lib/assets/Item_3.png',
    price: '56\$',
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];

List<Product> getProductList() {
  return list1;
}
