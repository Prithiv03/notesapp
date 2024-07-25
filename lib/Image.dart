import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_new_project/Page1.dart';


class image extends StatefulWidget {
  const image({super.key, required TabController tabController});

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  var Style;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text ("Menu app"),centerTitle: true,backgroundColor: Color.fromARGB(255, 230, 12, 12),),
        body: SingleChildScrollView(
          child: Column(
            children: [ 
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 100),
                child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: const Color.fromARGB(255, 217, 16, 16)),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/apps.png"),
                        SizedBox(width: 30),
                        Text('hiiii'),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> (Page1())));
                        }, child: Icon(Icons.call))
                      ],
                    )),
                  
              ),
             
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png"),
              Image.asset("assets/apps.png")
            ],
          ),
        ));
  }
}
