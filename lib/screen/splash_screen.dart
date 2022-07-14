// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => BottomBar())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // ignore: avoid_unnecessary_containers
          const Padding(
            padding: EdgeInsets.only(
              top: 200,
            ),
          ),
          Image.asset(
            "assets/images/reahu.png",
            height: 250,
          ),
          const SizedBox(
            height: 220,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomBar()),
              );
            },
            child: Container(
              //width: 100.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Center(
                child: Text(
                  'តោះទៅ',
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 38.0,
                    color: Colors.white,
                    package: 'khmer_fonts',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
