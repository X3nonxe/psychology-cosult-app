import 'dart:async';

import 'package:flutter/material.dart';
import 'package:konsultasi_psikologi/screens/On-Board/on_boarding.dart';
import 'package:konsultasi_psikologi/utils/color_pallate.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const OnBoarding();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bluePrimaryColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 01,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/logo.png"),
              )),
            )
          ]),
    );
  }
}
