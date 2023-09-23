import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding/one.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  OnboardingOne(),
        ),
      );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff123C4C),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/logoo-removebg-preview.png'),
        )

      )

    );
  }
}
