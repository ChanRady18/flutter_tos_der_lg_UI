// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/place_constant.dart';
import 'package:flutter_application_1/iconsax_icons.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:iconsax/iconsax.dart';

class PlaceInnerScreen extends StatefulWidget {
  final PlaceModel place;
  const PlaceInnerScreen({key, required this.place}) : super(key: key);

  @override
  _PlaceInnerScreenState createState() => _PlaceInnerScreenState();
}

class _PlaceInnerScreenState extends State<PlaceInnerScreen> {
  PlaceModel get place => widget.place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/" + place.bgimage.toString(),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0,sigmaY: 4.0,),
              child: Container(color: Colors.black.withOpacity(0.05),),
            ),
          ),
          Positioned(
            top: 40,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 23,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "តំបន់" + place.name.toString(),
                      style: const TextStyle(
                        fontFamily: 'Preahvihear',
                        fontSize: 28.0,
                        color: Colors.white,
                        package: 'khmer_fonts',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                place.des.toString(),
                style: const TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 15.0,
                  color: Colors.white,
                  package: 'khmer_fonts',
                ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                place.des_tip.toString(),
                style: const TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 15.0,
                  color: Colors.white,
                  package: 'khmer_fonts',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
