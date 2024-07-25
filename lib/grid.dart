import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/tap.dart';

class Grid extends StatefulWidget {
  const Grid({super.key,  TabController? tabController});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List<Color> design = [
    Colors.yellow,
    Colors.grey,
    Colors.purpleAccent,
    Colors.pink,
    Colors.grey,
    Colors.lightGreen,
    Colors.lightBlue,
    Colors.red,
    Colors.deepOrange,
    Colors.indigoAccent,
    Colors.lightGreen,
    Colors.lightBlue
  ];
  List<String> text = [
    "Home",
    "Email",
    "Alarm",
    "wallet",
    "Backup",
    "Book",
    "Camera",
    "Person",
    "print",
    "Phone",
    "Notes",
    "music"
  ];
  List<Icon> view = [
    Icon(Icons.home),
    Icon(Icons.email),
    Icon(Icons.alarm),
    Icon(Icons.wallet,),
    Icon(Icons.backup),
    Icon(Icons.book),
    Icon(Icons.camera),
    Icon(Icons.person),
    Icon(Icons.print),
    Icon(Icons.phone),
    Icon(Icons.notes),
    Icon(Icons.music_note),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromARGB(255, 230, 12, 12),
      ),
    body: SingleChildScrollView(
        child: Column(  
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1,
              width: MediaQuery.of(context).size.width / 1,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return InkWell( onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => (Tap())));
            },
                      child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(color: design[index]),
                          child: Center(
                            child: Column(
                              children: [
                                SizedBox(height: 15,),
                                      Icon(view[index].icon,size: 40,),SizedBox(height: 20,),
                                Text(
                                  text[index],
                                  style: TextStyle(fontSize: 20),
                                ),
                          
                              ],
                            ),
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
