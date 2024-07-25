import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key, required TabController tabController});

  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 195, 230, 230),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 300),
        child: Column(children: [
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 48, 177, 165),
                border: Border.all(color: Color.fromARGB(255, 182, 5, 5)),borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                  hintText: "username",
                  hintStyle: TextStyle(color: Color.fromARGB(182, 0, 0, 0)),
                  border: InputBorder.none),
            ),
          ),SizedBox(height: 20,),
          Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 177, 165),
                  border: Border.all(
                      color: const Color.fromARGB(255, 181, 21, 21)),borderRadius: BorderRadius.all(Radius.circular(20 ),)),
              child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(color:Color.fromARGB(182, 0, 0, 0)),
                      border: InputBorder.none))),        ElevatedButton(child: Text("submit"),style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(59, 7, 20, 7)),onPressed: (){},),

        ]
        ),
      ),
    );
  }
}
