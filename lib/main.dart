import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webco/constants.dart';
import 'package:webco/view/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(

        primaryColor: hPrimaryColor,
        scaffoldBackgroundColor: hDarkColor,
        canvasColor: hDarkColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).
          apply(bodyColor: Colors.white).
          copyWith(
          bodyText1: TextStyle(color: hBodyTextColor),
          bodyText2: TextStyle(color: hBodyTextColor),
          headline1: TextStyle(color: hBodyTextColor),

        )

      ),
      home:HomeScreen(),
    );
  }
}

