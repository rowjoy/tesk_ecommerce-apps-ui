// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tesk/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          headline2: GoogleFonts.montserrat(
            letterSpacing: 1,
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: GoogleFonts.montserrat(
            fontSize: 15,
            color: Colors.black.withOpacity(0.5),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      initialRoute: Homepage.path,
      routes: {
        Homepage.path: (context) => Homepage(),
      },
    );
  }
}
