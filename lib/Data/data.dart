import 'package:flutter/material.dart';

class OfficeBags{
  String image;
  String name;
  Color colors;
  double? price;

  OfficeBags({
    required this.image,
    required this.name,
    required this.colors,
    this.price = 234,
  });
}

List<OfficeBags> officeBags = [
  OfficeBags(image: "assets/bag1.png", name: "Office Code", colors: Colors.blue),
  OfficeBags(image: "assets/bag2.png", name: "Belt Bag", colors: Colors.brown),
  OfficeBags(image: "assets/bag3.png", name: "Hiking Bag", colors: Colors.grey),
  OfficeBags(image: "assets/bag4.png", name: "Old Fashion", colors: Colors.orange.shade300),
  OfficeBags(image: "assets/bag5.png", name: "Office Code", colors: Colors.red.shade300),
  OfficeBags(image: "assets/bag6.png", name: "Office Code", colors: Colors.grey.shade900),
];

List<String> categories = [
  "Hand Bag",
  "jewellery",
  "Foot-Wear",
  "Dresses",
];

List<Color> chooseColor = [
  Colors.blue,
  Colors.brown,
  Colors.grey,
  Colors.orange,
  Colors.red,
  Colors.grey.shade900,
];