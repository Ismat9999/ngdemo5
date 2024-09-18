import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/home_page.dart';
import 'package:ngdemo5/pages/signin_page.dart';
import 'package:ngdemo5/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id:(context)=> SplashPage(),
        SignInPage.id:(context)=> SignInPage(),
      },
    );
  }
}

