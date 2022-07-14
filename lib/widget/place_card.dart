
import 'package:flutter/material.dart';
import 'package:flutter_application_1/inner_screen/place_screen.dart';
import 'package:flutter_application_1/model/product_model.dart';

class PlaceCard extends StatelessWidget {
  final PlaceModel place;
  const PlaceCard({ Key? key, required this.place }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>   PlaceInnerScreen(place: place,)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16), //border corner radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 3, //spread radius
              blurRadius: 6, // blur radius
              offset: const Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        width: 200,
        margin: const EdgeInsets.only(right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child:
                  Image.asset('assets/images/' +place.image.toString()),
            ),
            Text(
              place.name.toString(),
              style: const TextStyle(
                fontFamily: 'Preahvihear',
                fontSize: 24.0,
                color: Colors.black,
                package: 'khmer_fonts',
              ),
            ),
          ],
        ),
      ),
    );
  }
}