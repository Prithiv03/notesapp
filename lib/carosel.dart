import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Caro extends StatefulWidget {
  const Caro({super.key});

  @override
  State<Caro> createState() => _CaroState();
}

class _CaroState extends State<Caro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO6h6B_ZU4HFi_smO27kYeirH6AKb83Nt9YA&s"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjkbdz5uCjPHSzCp30SfcmGYy6YYCrFRGa1g&s"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRVdmWiQ8VCww_-4XNLIC-a0eCGbWxB_Ip0g&s"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN8oStU6OqZiEXRjVSH0MEOzzC2J-wGM6rAA&s"),
                          fit: BoxFit.cover)),
                ),
              ],
              options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  // autoPlayInterval: Duration(milliseconds: 0.9 ),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8)),
        ],
      ),
    );
  }
}
