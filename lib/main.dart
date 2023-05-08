import 'package:flamefinder/Pages/Dashboard.dart';
import 'package:flamefinder/Pages/HomePage.dart';
import 'package:flamefinder/Pages/PozarSplash.dart';
import 'package:flamefinder/Pages/Prijava.dart';
import 'package:flamefinder/Pages/SplashVolonter.dart';
import 'package:flamefinder/Pages/SprijeciPozar.dart';
import 'Pages/SplashVolonter.dart';
import 'Pages/SplashPrijava.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashVolonter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
