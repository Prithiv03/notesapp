import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_new_project/Signin.dart';

class RowsandColomn extends StatefulWidget {
  const RowsandColomn({super.key});

  @override
  State<RowsandColomn> createState() => _RowsandColomnState();
}

class _RowsandColomnState extends State<RowsandColomn> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  String? validateMobile(String? value) {
    if (value!.length != 10) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return null;
    }
  }
  String title ="first ";
  String page ="second";
  String number ="third";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(actions:[PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Text(title
      ),
      value: title,
      ),
      PopupMenuItem(child: Text(page
      ),value: page,),
      PopupMenuItem(child: Text(number
      ),value: number,)
      ],onSelected: (String newvalue){setState(() {
        title=newvalue;
      }
      );},
      ),],

        title: Text(""),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Tap to Chat"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent,
                // iconColor: Color.fromARGB(255, 200, 126, 16),
                side: BorderSide(color: Colors.indigo),
                elevation: 5,
              ),
              onPressed: () {},
            ),SizedBox(height: 40,),
            const Text("submit the email", style: TextStyle(fontSize: 20)),SizedBox(height: 10,),
            Container(
              width: 600,
              height: 200,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Column(
                children: [
                  TextFormField(
                    validator: validateEmail,
                    controller: name,
                    decoration: InputDecoration(
                        hintText: "enter the email",
                        labelText: "email",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 197, 9, 9),
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22))),
                  ),
                  SizedBox(height: 30,),
                  TextFormField(
                      validator: validateMobile,
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
            ),
            ElevatedButton(
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 187, 170, 215),
                iconColor: Color.fromARGB(255, 5, 234, 250),
                side: BorderSide(color: Color.fromARGB(31, 200, 3, 3)),
                elevation: 0,
              ),
              onPressed: () {
            if(_formKey.currentState!.validate()){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> (Signin())));
              print("sucees");
            }
            
              },
            ),
          ],
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isEmpty || !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }
}

