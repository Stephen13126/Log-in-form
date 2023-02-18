import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/Constants/const_widget.dart';
import 'package:shopping/Data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarTheme(Colors.grey.shade600),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Women",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              flex: 5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, int index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categories[index],
                            style: GoogleFonts.rancho(
                              fontSize: selected == index ? 15 : 12,
                              color: selected == index ? Colors.black : Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 3),
                          selected == index ? Container(
                            height: 2,
                            width: 20,
                            color: Colors.grey[600],
                          ) : Container(),
                        ],
                      ),
                    ),
                  );
                }
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              flex: 95,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: officeBags.length,
                itemBuilder: (context, index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.toNamed("/details", arguments: officeBags[index]);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: officeBags[index].colors,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height * 0.2,
                            minHeight: MediaQuery.of(context).size.height * 0.2,
                            maxWidth: double.infinity,
                            minWidth: double.infinity,
                          ),
                          child: Image(
                            image: AssetImage(officeBags[index].image),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          officeBags[index].name,
                          style: GoogleFonts.rancho(
                            fontSize: 20,
                            color: Colors.grey[900],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "\$ ${officeBags[index].price} USD",
                          style: GoogleFonts.rancho(
                            fontSize: 13,
                            color: Colors.brown[300],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}