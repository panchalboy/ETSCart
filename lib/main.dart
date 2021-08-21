
import 'package:etscart/Views/NotesScreen.dart';
import 'package:etscart/Views/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Utils/Color.dart';
import 'Utils/ConvertColor.dart';
import 'Views/HomeScreen.dart';
import 'Views/SlidderScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          //Home Page Bottom Part Button Text Style
          bodyText1: GoogleFonts.poppins(textStyle:TextStyle(color:Color(ConvertHexToColor().hexCode(ColorCode.hmpBpText)),fontSize: 21,fontWeight: FontWeight.bold)),
          // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
