import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new_project/Image.dart';
import 'package:flutter_new_project/Login.dart';
import 'package:flutter_new_project/Nextpage.dart';
import 'package:flutter_new_project/Task1.dart';
 import 'package:flutter_new_project/grid.dart';
import 'package:flutter_new_project/tap.dart';

class BarTab extends StatefulWidget {
  const BarTab({super.key});

  @override
  State<BarTab> createState() => _BarTabState();
}

class _BarTabState extends State<BarTab> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            text: "home",
            icon: Icon(
              Icons.home_filled,
              color: Colors.indigo,
            ),
          ),
          Tab(
            text: "Email",
            icon: Icon(
              Icons.email,
              color: Colors.indigo,
            ),
          ),
          Tab(
            text: "star",
            icon: Icon(
              Icons.star,
              color: Colors.indigo,
            ),
          ),
          Tab(
            text: "person",
            icon: Icon(
              Icons.person,
              color: Colors.indigo,
            ),
          )
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        image(
          tabController: tabController,
        ),
        Nextpage(
          tabController: tabController,
        ),
        Grid(
          tabController: tabController,
        ),
        Tap(
          tabController :tabController,
        )
      ]),
    );
  }
}
