import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/Constants/const_widget.dart';
import 'package:shopping/Data/data.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selected = 0;
  int counter = 0;
  bool favourite = false;

  void increment(){
    setState(() {
      counter++;
    });
  }

  void decrement(){
    if(counter > 0){
      setState(() {
        counter--;
      });
    } else {
      setState(() {
        counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.arguments.colors,
      appBar: appBarTheme(Colors.white),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Aristocramic Hand Bag",
                      style: GoogleFonts.rancho(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "Office Code",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: GoogleFonts.rancho(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "\$ ${Get.arguments.price.toString()}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                    child: ListView(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Color",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      ...List.generate(
                                        chooseColor.length, 
                                        (index) => Row(
                                          children: [
                                            const SizedBox(width: 3),
                                            selected != index ? GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  selected = index;
                                                });
                                              },
                                              child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor: chooseColor[index],
                                              ),
                                            ) : CircleAvatar(
                                              radius: 11,
                                              backgroundColor: chooseColor[index],
                                              child: CircleAvatar(
                                                radius: 9,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 7,
                                                  backgroundColor: chooseColor[index],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Size",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Text(
                                    "12cm",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[900],
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  decrement();
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 1
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Get.arguments.colors,
                                    size: 15,
                                  )
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                counter.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Get.arguments.colors,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: (){
                                  increment();
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 1
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Get.arguments.colors,
                                    size: 15,
                                  )
                                ),
                              ),
                              Expanded(child: Container()),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    favourite = !favourite;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: !favourite ? Colors.pink : Colors.transparent,
                                  radius: 15,
                                  child: Icon(
                                    Icons.favorite,
                                    color: !favourite ? Colors.white : Colors.pink,
                                    size: !favourite ? 18 : 25,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(color: Get.arguments.colors, width: 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: Get.arguments.colors,
                                    size: 15,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: TextButton(
                                  onPressed: (){
                              
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Get.arguments.colors,
                                  ),
                                  child: const Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            // top: MediaQuery.of(context).size.height * 0.0,
            right: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.transparent,
              child: Image(
                image: AssetImage(Get.arguments.image),
              ),
            )
          ),
        ],
      ),
    );
  }
}