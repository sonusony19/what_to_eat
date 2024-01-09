import 'dart:async';

import 'package:flutter/material.dart';
import 'package:what_to_eat/ui/home/view/home.dart';

void main() {
  runApp(const ThisApplication());
}

class ThisApplication extends StatelessWidget {
  const ThisApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "What to Eat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "InterTight",
              fontWeight: FontWeight.bold
          ),
        )
      ),
      home: const SplashActivity(),
    );
  }
}

class SplashActivity extends StatefulWidget {
  const SplashActivity({super.key});

  @override
  State<StatefulWidget> createState() => SplashActivityState();
}

class SplashActivityState extends State<SplashActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeActivity(),
          ));
    });
  }
}
