import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sebha_app2/constants/mainconstants.dart';
import 'package:sebha_app2/view/home/screens/sebhascreen.dart';
import 'package:sebha_app2/view/splash/splashscreen.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sebha',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}


