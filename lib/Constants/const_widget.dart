import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appBarTheme(Color color){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 40,
    iconTheme: IconThemeData(
      size: 18,
      color: color,
    ),
    leading: GestureDetector(
      onTap: (){
        Get.back();
      },
      child: const Icon(
        Icons.arrow_back,
      ),
    ),
    title: Row(
      children: [
        Expanded(child: Container()),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: const [
              Icon(Icons.shopping_cart_outlined),
              Positioned(
                top: 1,
                right: 1,
                child: CircleAvatar(
                  radius: 3,
                  backgroundColor: Colors.orange,
                )
              )
            ],
          ),
        ),
      ],
    ),
  );
}