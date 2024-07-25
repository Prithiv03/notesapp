import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/onboard.dart';

class Offboard extends StatefulWidget {
  const Offboard({super.key});

  @override
  State<Offboard> createState() => _OffboardState();
}

class _OffboardState extends State<Offboard> {
  late final PageController _controller;
  int currentIndex = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                itemCount: onboard.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        SizedBox(
                          width: 450,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 1.50,
                            width: 800,
                            child: Image.asset(onboard[i].image),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(onboard[i].Text,
                                style: TextStyle(
                                    fontFamily: 'Inter-bold',
                                    fontSize: 24,
                                    color: Colors.white)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(onboard[i].description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Inter-bold',
                                    fontSize: 24,
                                    color: const Color.fromRGBO(255, 255, 255, 1))),
                          ],
                        ),
                      ]));
                }),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 40,
                child: Builder(builder: (context) {
                  if (currentIndex == 0) {
                    return Row(
                      children: [
                        indexdot(),
                        SizedBox(
                          width: 10,
                        ),
                        dot(),
                        SizedBox(width: 10),
                        dot()
                      ],
                    );
                  } else if (currentIndex == 1) {
                    return Row(
                      children: [
                        dot(),
                        SizedBox(
                          width: 10,
                        ),
                        indexdot(),
                        SizedBox(
                          width: 10,
                        ),
                        dot()
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        dot(),
                        SizedBox(
                          width: 10,
                        ),
                        dot(),
                        SizedBox(
                          width: 10,
                        ),
                        indexdot()
                      ],
                    );
                  }
                }),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(builder: (context) {
                if (currentIndex == 0) {
                  return TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                } else if (currentIndex == 1) {
                  return TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                } else {
                  return TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                }
              }),
              currentIndex == onboard.length - 1
                  ? Container(
                      height: 45,
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width / 3,
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        onPressed: () {
                          if (currentIndex == onboard.length - 1) {
                            //Firebaser
                          }
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        },
                        child: const Text(
                          "Get Start",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter-Medium',
                              fontSize: 14),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 1),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0))),
                        onPressed: () {
                          if (currentIndex == onboard.length - 1) {
                            // Navigator.push(
                            //     context,
                            //     PageTransition(
                            //       duration: const Duration(
                            //           milliseconds: 300),
                            //       type: PageTransitionType
                            //           .rightToLeft,
                            //       child: const Otp(),
                            //     ));
                          }
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        },
                        child: Icon(
                          Icons.arrow_circle_right,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ),
                    )
            ],
          )
        ],
      ),
    );
  }

  Container indexdot() {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }

  Container dot() {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
    );
  }
}
