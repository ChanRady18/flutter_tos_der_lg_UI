import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/popular_place_model.dart';
import 'package:flutter_application_1/model/product_model.dart';
import 'package:flutter_application_1/widget/place_card.dart';
import 'package:flutter_application_1/widget/poplar_card.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
            buildHeader(),
            const SizedBox(
              height: 10,
            ),
            buildSearch(),
            const SizedBox(
              height: 14,
            ),
            buildSectionTtile(),
            const SizedBox(
              height: 14,
            ),
            buildCategory(),
            const SizedBox(
              height: 14,
            ),
            buildTitle(),
            const SizedBox(
              height: 10,
            ),
            buildPopular(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/avatar.png')),
                const Text(
                  "សួស្តី! រ៉ាឌី",
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 24,
                    color: Colors.black,
                    package: 'khmer_fonts',
                  ),
                )
              ],
            ),
            SizedBox(
              width: 45,
              height: 45,
              child: FittedBox(
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(
                    Iconsax.notification4,
                    size: 33,
                    color: Colors.black,
                  ),
                  foregroundColor: const Color.fromRGBO(41, 45, 50, 1),
                  backgroundColor: const Color.fromRGBO(235, 236, 236, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        const Text(
          "តើអ្នកចង់\nទៅកន្លែងណា?",
          style: TextStyle(
            fontFamily: 'Preahvihear',
            fontSize: 32,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16), //border corner radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 3, //spread radius
            blurRadius: 6, // blur radius
            offset: const Offset(3, 3), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "ស្វែងរក...",
                hintStyle: TextStyle(
                  fontFamily: 'Preahvihear',
                  fontSize: 22,
                  package: 'khmer_fonts',
                ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10),
                suffixIcon: Icon(
                  Iconsax.search_normal_1,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionTtile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Text(
          "ប្រភេទកន្លែង",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontFamily: 'Preahvihear',
            fontSize: 32.0,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
        )
      ],
    );
  }

  Widget buildCategory() {
    return Container(
      height: 88,
      width: 200,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: placeList.length,
        itemBuilder: (context, index) {
          PlaceModel place = placeList[index];
          return PlaceCard(place: place);
        },
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "កន្លែងនិយមបំផុត",
          // ignore: unnecessary_const
          style: const TextStyle(
            fontFamily: 'Preahvihear',
            fontSize: 32.0,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
        )
      ],
    );
  }

  Widget buildPopular() {
    return Container(
      height: 260,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularList.length,
        itemBuilder: (context, index) {
          PopularModel popular = popularList[index];
          return PopularCard(
            popular: popular,
          );
        },
      ),
    );
  }
}
