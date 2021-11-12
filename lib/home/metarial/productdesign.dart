// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Productdesign extends StatelessWidget {
  const Productdesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kElevationToShadow[4],
        borderRadius: BorderRadius.circular(2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.5,
            child: Image.asset('assets/product/pro1.png'),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text('Della'),
                Text('\$100'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RatingBar.builder(
              itemSize: 20,
              initialRating: 3,
              itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
              onRatingUpdate: (e) {}),
        ],
      ),
    );
  }
}
