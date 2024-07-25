import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/grid.dart';
import 'package:flutter_new_project/new.dart';

class Nextpage extends StatefulWidget {
  const Nextpage({super.key, TabController? tabController});

  @override
  State<Nextpage> createState() => _NextpageState();
}

class _NextpageState extends State<Nextpage> {
  List<String> image = [
    "assets/chicken.png",
    "assets/burger.png",
    "assets/roasted.png",
    "assets/roast.png",
  ];
  List<String> text = [
    "Spicy",
    "Burger",
    "Barbique",
    "Roasted",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.orange,
            title: Center(
              child: Text(
                'Burger',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // SizedBox(
          //   height: 60,
          // ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 30),
          //       child: Container(
          //         height: 150,
          //         width: 150,
          //         child: Image.asset(
          //           "assets/burg.png",
          //         ),
          //         decoration: BoxDecoration(
          //             borderRadius:
          //                 BorderRadius.only(bottomLeft: Radius.circular(20)),
          //             color: Colors.black38),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 70,
          //     ),
          //     Text(
          //       "199/-",
          //       style: TextStyle(fontSize: 50),
          //     )
          //   ],
          // ),
          SizedBox(
            height: 430,
            child: ListView.builder(
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => (Grid())));
                    },
                    child: Container(
                      height: 220,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 186, 195, 203)),
                      child: Row(
                        children: [
                          Image.asset(
                            image[index],
                            height: 250,
                            width: 250,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.deepOrangeAccent),
                          )
                        ],
                      ),
                    ),
                  ),
                );
                // return ListTile(
                //   leading: Icon(Icons.apple_sharp),
                //   trailing: Text(
                //     text[index],
                //     style: TextStyle(
                //         color: Color.fromARGB(255, 229, 8, 8), fontSize: 24),
                //   ),
                //   title: Image.asset(
                //     image[index],
                //     height: 200,
                //     width: 100,
                //   ),
                // );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 100,
                    width: 150,
                    child: Column(
                      children: [
                        Image.asset("assets/pizza.png"),
                        Text(
                          "pizza",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w100,
                              color: Colors.black45),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 186, 195, 203)),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
