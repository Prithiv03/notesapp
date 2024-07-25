import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/Page1.dart';
import 'package:flutter_new_project/Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (Page1())));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Welcome back!Glad',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'to see you, Again!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            color: Colors.grey.shade100,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            color: Colors.grey.shade100,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: Text("Forgot password?"),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => (Page3())));
            },
            child: Container(
                child: Center(
                    child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black)),
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text('or login with'),
            SizedBox(
              width: 30,
            ),
            SizedBox(
              width: 100,
              child: Divider(
                color: Colors.black,
              ),
            ),
          ]),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Icon(
                    Icons.facebook,
                    size: 35,
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Icon(
                  Icons.call_merge,
                  size: 35,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Icon(
                  Icons.apple_outlined,
                  size: 35,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
