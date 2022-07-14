import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/addplace.dart';
import 'package:flutter_application_1/model/place_in_city_model.dart';
import 'package:flutter_application_1/model/popular_place_model.dart';
import 'package:flutter_application_1/notify/addplace_notify.dart';
import 'package:flutter_application_1/widget/place_city_card.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/src/provider.dart';

class PopularPlaceInnerScreen extends StatefulWidget {
  final PopularModel popular;
  const PopularPlaceInnerScreen({Key? key, required this.popular})
      : super(key: key);

  @override
  _PopularPlaceInnerScreenState createState() =>
      _PopularPlaceInnerScreenState();
}

class _PopularPlaceInnerScreenState extends State<PopularPlaceInnerScreen> {
  PopularModel get popular => widget.popular;
  bool addFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          children: [
            buildImage(),
            buildDescription(),
            buildCityPlace(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              var o = AddPlace(popular: popular, qty: 1);
              context.read<AddPlaceNotify>().addOrder(o);
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
                  'តោះរៀបគម្រោង',
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 32.0,
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

  Widget buildImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            'assets/images/' + popular.innerpicture.toString(),
            fit: BoxFit.cover,
            height: 400,
            width: double.infinity,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 100,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
            ),
            padding: const EdgeInsets.all(13),
            child: Text(
              'ខេត្ត ' + popular.name.toString(),
              style: const TextStyle(
                fontFamily: 'Preahvihear',
                fontSize: 26,
                color: Colors.white,
                package: 'khmer_fonts',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(13),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Iconsax.location4,
                  color: Colors.white,
                  size: 24,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  popular.place.toString(),
                  style: const TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 18,
                    color: Colors.white70,
                    package: 'khmer_fonts',
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white.withOpacity(0.5),
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white.withOpacity(0.5),
              child: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: IconButton(
                      icon: Icon(addFavorite ? Iconsax.heart4 : Iconsax.heart5),
                      color: Colors.black,
                      onPressed: () {
                        // Setting the state
                        setState(() {
                          addFavorite = !addFavorite;
                        });
                      }),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDescription() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "ទិដ្ឋភាពទូទៅ",
            // ignore: unnecessary_const
            style: const TextStyle(
              fontFamily: 'Preahvihear',
              fontSize: 26,
              color: Colors.black,
              package: 'khmer_fonts',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Iconsax.location4,
                    color: Colors.black,
                    size: 36,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "ចំងាយ",
                        style: TextStyle(
                          fontFamily: 'Preahvihear',
                          fontSize: 16,
                          color: Colors.black,
                          package: 'khmer_fonts',
                        ),
                      ),
                      Text(
                        popular.destination.toString() + 'គីឡូម៉ែត្រពីភ្នំពេញ',
                        style: const TextStyle(
                          fontFamily: 'Preahvihear',
                          fontSize: 16,
                          color: Colors.black,
                          package: 'khmer_fonts',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Iconsax.star4,
                    color: Colors.black,
                    size: 36,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "ការវាយតម្លៃ",
                        style: TextStyle(
                          fontFamily: 'Preahvihear',
                          fontSize: 16,
                          color: Colors.black,
                          package: 'khmer_fonts',
                        ),
                      ),
                      const Text(
                        '៥ នៃ ៥',
                        style: TextStyle(
                          fontFamily: 'Preahvihear',
                          fontSize: 16,
                          color: Colors.black,
                          package: 'khmer_fonts',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCityPlace() {
    return Container(
      height: 180,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: placecityList.length,
          itemBuilder: (context, index) {
            PlaceCityModel city = placecityList[index];
            return PlaceCityCard(city: city);
          }),
    );
  }
}
