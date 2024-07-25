import 'package:flutter/material.dart';
import 'package:flutter_new_project/Tabbar.dart';
import 'package:flutter_new_project/carosel.dart';
import 'package:flutter_new_project/offboard.dart';
import 'package:flutter_new_project/operators.dart';
// import 'package:flutter_new_project/rows_and_column.dart';
// import 'package:flutter_new_project/Image.dart';
// import 'package:flutter_new_project/Login.dart';
//  import 'package:flutter_new_project/Nextpage.dart';
//  import 'package:flutter_new_project/Task1.dart';
// import 'package:flutter_new_project/cam.dart';
//  import 'package:flutter_new_project/grid.dart';
//  import 'package:flutter_new_project/new.dart';
// import 'package:flutter_new_project/rows_and_column.dart';
import 'package:flutter_new_project/tap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 36, 82,  255)),
          useMaterial3: true,
        ),
        home: Condition());
  }
}
