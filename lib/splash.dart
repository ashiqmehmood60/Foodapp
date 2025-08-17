import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodapp/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [Color(0xffEF2A39), Color(0xffFF939B)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: size.height * 0.38),
                Center(
                  child: Text(
                    "Foodgo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontFamily: "Dancing",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.25),
                Stack(
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/image 2.png')),
                      ],
                    ),
                    Positioned(
                      top: 70,
                      left: 110,
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/image 1.png')),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
