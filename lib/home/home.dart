// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:tesk/home/metarial/category.dart';
import 'package:tesk/home/metarial/productdesign.dart';
import 'package:tesk/home/metarial/searchber.dart';

class Homepage extends StatefulWidget {
  static const String path = "Homepage";
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Discover',
          style: Theme.of(context).textTheme.headline1,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(),
          ),
        ],
        bottom: PreferredSize(
          child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Searchber(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.menu),
                    ),
                  ],
                ),
              )),
          preferredSize: Size.fromHeight(80),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Categorise',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Category(),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Most populer',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),

                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                      Productdesign(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
