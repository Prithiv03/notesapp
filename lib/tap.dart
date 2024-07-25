import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/Page2.dart';
import 'package:flutter_new_project/Signin.dart';
import 'package:flutter_new_project/new.dart';
import 'package:flutter_new_project/rows_and_column.dart';
 
class Tap extends StatefulWidget {
  const Tap({super.key, TabController? tabController});

  @override
  State<Tap> createState() => _TapState();
}

class _TapState extends State<Tap> {
  int _selectedvalue = 0;
  bool value = false;
  bool page = false;
  bool name = false;
  PageController controller = PageController(initialPage: 0);

  int? selected = 0;
  List valueselected = [Page2(), New(), Signin(), RowsandColomn()];

  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: valueselected[selected!],
      // body: ListView(
      //   children: <Widget>[
      //     RadioListTile(
      //       title: Text("option 1"),
      //       subtitle: Text("subtitle for option 1"),
      //       value: 1,
      //       groupValue: _selectedvalue,
      //       onChanged: (value) {
      //         setState(() {
      //           _selectedvalue = value!;
      //         });
      //       },
      //     ),
      //     RadioListTile(
      //       title: Text("option 2"),
      //       subtitle: Text("subtitle for option 2"),
      //       value: 2,
      //       groupValue: _selectedvalue,
      //       onChanged: (value) {
      //         setState(() {
      //           _selectedvalue = value!;
      //         });
      //       },
      //     ),
      //     RadioListTile(
      //       title: Text("option 3"),
      //       subtitle: Text("subtitle for option 3"),
      //       value: 3,
      //       groupValue: _selectedvalue,
      //       onChanged: (value) {
      //         setState(() {
      //           _selectedvalue = value!;
      //         });
      //       },
      //     ),
      //     RadioListTile(
      //       title: Text("option 4"),
      //       subtitle: Text("subtitle for option 4"),
      //       value: 4,
      //       groupValue: _selectedvalue,
      //       onChanged: (value) {
      //         setState(() {
      //           _selectedvalue = value!;
      //         });
      //       },
      //     ),
      //     CheckboxListTile(
      //         title: Text("prithiv singh"),
      //         value: this.value,
      //         onChanged: (bool? value) {
      //           setState(() {
      //             this.value = value!;
      //           });
      //         }),
      //     CheckboxListTile(
      //         title: Text("abcdefghijklmnopqrstuvwxyz"),
      //         value: this.page,
      //         onChanged: (bool? page) {
      //           setState(() {
      //             this.page = page!;
      //           });
      //         }),
      //     CheckboxListTile(
      //         title: Text("alo hub"),
      //         value: this.name,
      //         onChanged: (bool? name) {
      //           setState(() {
      //             this.name = name!;
      //           });
      //         }),
      //     ElevatedButton(
      //       child: Text("bottom sheet"),
      //       onPressed: () {
      //         showModalBottomSheet(
      //             context: context,
      //             builder: (BuildContext context) {
      //               return Container(
      //                 height: 100,
      //                 width: 420,
      //                 color: const Color.fromRGBO(255, 171, 64, 1),
      //                 child: Center(
      //                   child: ElevatedButton(
      //                       onPressed: () {
      //                         Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                                 builder: (context) => (Tap())));
      //                       },
      //                       child: Text("close")),
      //                 ),
      //               );
      //             });
      //       },
      //     ),
      //     SizedBox(
      //       height: 250,
      //     ),
      //   ],
      // ),
      // bottomNavigationBar: StylishBottomBar(
      //   option: BubbleBarOptions(
      //     // barStyle: BubbleBarStyle.vertical,
      //     barStyle: BubbleBarStyle.horizontal,
      //     bubbleFillStyle: BubbleFillStyle.fill,
      //     // bubbleFillStyle: BubbleFillStyle.outlined,
      //     opacity: 0.3,
      //   ),
      //   iconSpace: 12.0,
      //   items: [
      //     BottomBarItem(
      //       icon: const Icon(Icons.abc),
      //       title: const Text('Abc'),
      //       backgroundColor: Colors.blueGrey,

      //       // selectedColor: Colors.pink,
      //       selectedIcon: const Icon(Icons.read_more),
      //       badge: const Text('1+'),
      //       badgeColor: Colors.red,
      //       showBadge: true,
      //     ),
      //     BottomBarItem(
      //       icon: const Icon(Icons.safety_divider),
      //       title: const Text('Safety'),
      //       selectedColor: Colors.orange,
      //       backgroundColor: Colors.orange,
      //     ),
      //     BottomBarItem(
      //       icon: const Icon(Icons.cabin),
      //       title: const Text('Cabin'),
      //       backgroundColor: Colors.purple,
      //     ),
      //     BottomBarItem(
      //       icon: const Icon(Icons.cabin),
      //       title: const Text('Cabin'),
      //       backgroundColor: Colors.purple,
      //     ),
      //   ],
      //   hasNotch: true,
      //   currentIndex: selected!,
      //   onTap: (index) {
      //     setState(() {
      //       selected = index;
      //      });
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.black,unselectedItemColor: Colors.white,
          currentIndex: index,
          // showSelectedLabels: true,
          // showUnselectedLabels: true,
         onTap: (current_index) {
           setState(() {
             index= current_index;
           });
         },
          // iconSize: 30,
          // selectedFontSize: 20,
          //  selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_outline,
                ),
                label: 'Liked',
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
                backgroundColor: Colors.redAccent),
          ]),
    );
  }
}
