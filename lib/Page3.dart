import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  TextEditingController phonenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 70,
            width: 50,
            color: Color.fromARGB(255, 122, 121, 121),
            child: Icon(Icons.arrow_back),
          ),
       TextFormField(
                    
                      controller: phonenumber,
                      decoration: InputDecoration(
                          hintText: "enter the number",
                          labelText: "pho.no",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 226, 4, 4)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(22))))
  
        ],
      ),
    );
  }
}
