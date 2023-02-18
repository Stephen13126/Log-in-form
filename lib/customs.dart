import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fsize;
  FontWeight ? fontWeight;
  double ? lSpacing;
  Color ? textColor;
   CustomText({super.key, required this.text, required this.fsize, this.textColor, this.lSpacing, this.fontWeight,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
              text,
              style: TextStyle(
                fontSize: fsize,
                fontWeight: fontWeight ?? FontWeight.normal,
                color: textColor ?? Colors.black,
                letterSpacing: lSpacing ?? 1.2,
              ),
          ),
      ),
    );
  }
}