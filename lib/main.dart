import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'KDJayavarman1',
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

