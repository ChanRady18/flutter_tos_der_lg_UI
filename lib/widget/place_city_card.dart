import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/place_in_city_model.dart';

class PlaceCityCard extends StatefulWidget {
  final PlaceCityModel city;
  const PlaceCityCard({Key? key, required this.city}) : super(key: key);

  @override
  _PlaceCityCardState createState() => _PlaceCityCardState();
}

class _PlaceCityCardState extends State<PlaceCityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), //border corner radius
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
      width: MediaQuery.of(context).size.width * 0.33,
      margin: EdgeInsets.only(right: 13,left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildImage(),
          const SizedBox(height: 8,),
          buildTitle(),
        ],
      ),
    );
  }

  Widget buildImage(){
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/' + widget.city.image.toString(),
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget buildTitle(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.city.name.toString(),
           style: const TextStyle(
            fontFamily: 'Preahvihear',
            fontSize: 16.0,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
