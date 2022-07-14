
import 'package:flutter/material.dart';
import 'package:flutter_application_1/inner_screen/popular_place.dart';
import 'package:flutter_application_1/model/popular_place_model.dart';
import 'package:flutter_application_1/widget/app_custom.dart';
import 'package:iconsax/iconsax.dart';

class PopularCard extends StatelessWidget {
  final PopularModel popular;
  const PopularCard({ Key? key, required this.popular }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => PopularPlaceInnerScreen(popular: popular,)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14), //border corner radius
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
        width: MediaQuery.of(context).size.width * 0.7,
        margin: EdgeInsets.only(right: 8,left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImage(),
            buildInfo(),
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/' + popular.image.toString(),
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\t"+
                    popular.name.toString(),
                    style: const TextStyle(
                      fontFamily: 'Preahvihear',
                      fontSize: 24.0,
                      color: Colors.black,
                      package: 'khmer_fonts',
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(30), //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 3, // blur radius
                          offset:
                              const Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child:  const FavoriteCustom()
                    ),
                  ),
                ],
              ),
              Text(
                "\t" + popular.type.toString(),
                style: const TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 22.0,
                  color: Colors.black54,
                  package: 'khmer_fonts',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}