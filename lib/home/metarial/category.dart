// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 160,
      margin: EdgeInsets.only(left: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              boxShadow: kElevationToShadow[4],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/category/Icon_Devices@1X.png'),
                ),
                Text(
                  'Light',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.green,
              boxShadow: kElevationToShadow[4],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/category/Icon_Gadgets@1X.png'),
                ),
                Text(
                  'Headphone',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: kElevationToShadow[4],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/category/Icon_Gaming@1X.png'),
                ),
                Text(
                  'Game',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.yellow,
              boxShadow: kElevationToShadow[4],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: Image.asset('assets/category/Icon_Mens Shoe@1X.png'),
                ),
                Text(
                  'Shows',
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
