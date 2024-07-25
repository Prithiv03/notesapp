import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade100,
              child: Image.asset("assets/flower.png"),
            ),
            SizedBox(
              height: 180,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> (Page2())));
            },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,border: Border.all(color: Colors.black)),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 55,),
            Text("Continue as guest",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color.fromARGB(163, 21, 145, 203)),)
          ],
        ),
      ),
    );
  }
}
