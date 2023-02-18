import 'package:flutter/material.dart';

import "package:get/get.dart";
import 'package:shopping/Screens/home.dart';
import 'package:shopping/loginforms/open.dart';
import 'package:shopping/loginforms/register.dart';

import 'loginforms/log_in.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/", page: () => const RegestForm ()),
        // GetPage(name: "/details", page: () => constHomePage ),
      ],

    ),
  );
}