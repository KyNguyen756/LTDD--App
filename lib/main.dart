import 'package:demo/template/explore_screen.dart';
import 'package:demo/template/explore_screen.dart';
import 'package:demo/template/main_navigation.dart';
import 'package:demo/template/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: Color(0xCEA6),
        useMaterial3: true,
      ),
      home: Signin()
    );
  }
}

