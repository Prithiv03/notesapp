import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 import 'package:flutter_new_project/tap.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  List<String> image = [
    "assets/I.png",
    "assets/I 13.png",
    "assets/I 14.png",
    "assets/I 15.png"
  ];
  List<String> text = ["I phone12", "I phone13", "I phone14", "I phone15"];
  List<String> write = ["₹50,000", "₹70,000", "₹1,00,000", "₹1,50,000"];
  //  List<String> sent = [
  //    " The 6.1-inch iPhone 12 and 5.4-inch iPhone 12 mini are equally powerful.",
  //    "The iPhone 13 is water resistant with an IP68 rating","re-architected internal design that offers improved repairability","Yes, the iPhone 15 is worth it, although we reckon it depends on what phone you're upgrading from."
  //  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: Text(""),
              centerTitle: true,
              backgroundColor: Color.fromARGB(255, 230, 12, 12),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 800,
              width: 400,
              child: ListView.builder(
                  itemCount: image.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell( onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => (Tap())));
            },
                        child: Container(
                          height: 130,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(217, 255, 210, 255)),
                          child: Row(
                            children: [
                              Image.asset(
                                image[index],
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                                ),
                              SizedBox(
                                width: 35,
                              ),
                              Text(write[index]),
                            ],
                          ),
                        
                                            
                          
                          
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
