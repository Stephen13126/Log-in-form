import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shopping/valentines/lScreen.dart';
import 'package:shopping/valentines/sScreen.dart';

class LayOut extends StatefulWidget {
  const LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,BoxConstraints supa){
        if(supa.maxWidth>700){
          return Forteenth();
        }
        else{
          return Vale();
        }
      },
    );
  } 
}