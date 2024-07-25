import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/Image.dart';
import 'package:flutter_new_project/Nextpage.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key, required TabController tabController});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  List<String> image = [
    "assets/pizza.png",
    "assets/chef.png",
    "assets/tweet.png","assets/flower.png",
  ];
  List<String> text = [
    "chef",
    "cook",
    "chgfgkef", "jhhjhjhhj",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.orange,
              title: Center(
                child: Text('MENU'),
              ),
              actions: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.orange, width: 5)),
                      child: ClipRRect(
                        child:
                            Image.asset("assets/burger.png", fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.orange, width: 5)),
                  child: ClipRRect(
                      child: Image.asset(
                        "assets/pizza.png",
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("Burger",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                ),
                SizedBox(
                  width: 180,
                ),
                Text("Pizza",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black))
              ],
            ),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (Nextpage())));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange),
                child: Center(
                  child: Text(
                    'Burger',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => (Nextpage())));
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.orange),
                child: Center(
                  child: Text(
                    'Pizza',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            SizedBox(
              width: 300,
              child: Divider(
                color: const Color.fromARGB(255, 85, 91, 94),
              ),
            ),
            SizedBox(
              height: 230 * double.parse(image.length.toString()),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: image.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.apple_sharp),
                      trailing: Text(
                        text[index],
                        style: TextStyle(
                            color: Color.fromARGB(255, 229, 8, 8),
                            fontSize: 24),
                      ),
                      title: Image.asset(
                        image[index],
                        height: 200,
                        width: 100,
                      ),
                    );
                  }),
            ),
            SizedBox(
                height: 200,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20,
                    // childAspectRatio: 0.6
                  ),
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.all(8.0),
                  itemCount: text.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      width: 150,
                      color: Color.fromARGB(255, 9, 16, 22),
                      child: Text(
                        text[index],
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
