import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();

}

class _InputState extends State<Input> {
  Color color=Colors.grey;
  bool selected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
           onTap: (){
            setState(() {
              color = Colors.red;
            });
           },
           hoverColor: Colors.yellow,
           splashColor: Colors.green,
           child: Ink(
            height: 100,
            width: 100,
            color: color,
           ),
          ),
          SizedBox(
            height: 10,
           
          ),
           InputChip(
              avatar: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.black,
              ),
              onPressed: (){
                setState(() {
                selected =!selected;
                  
                });
              },
              selectedColor:Colors.green,
              label: Text('Cartoon'),
              selected: selected,
              deleteIcon: Icon(Icons.delete),
              onDeleted: (){},
            )


        ],
      ),
     ),
    );
  }
}