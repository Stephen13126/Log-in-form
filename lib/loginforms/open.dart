import 'package:flutter/material.dart';

class OpenNew extends StatefulWidget {
  const OpenNew({super.key});

  @override
  State<OpenNew> createState() => _OpenNewState();
}

class _OpenNewState extends State<OpenNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      appBar: AppBar(
        
        // title: Text("Welcome , We are gland to have you here:"),
        actions: [
          Icon(Icons.menu),
        
       ],
      ),  
    );
  }
}