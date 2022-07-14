import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geocoder/geocoder.dart';
import 'package:iconsax/iconsax.dart';
import 'package:latlong/latlong.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  double long = 49.5;
  double lat = -0.09;
  LatLng point = LatLng(49.5, -0.09);
  var location = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 26),
          children: [
            buildHeader(),
            const SizedBox(
              height: 10,
            ),
            buildTitle(),
            const SizedBox(
              height: 10,
            ),
            buildMap(),
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
                  "សួស្តី!រ៉ាឌី",
                  style: TextStyle(
                    fontFamily: 'Preahvihear',
                    fontSize: 20,
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
      ],
    );
  }

  Widget buildTitle() {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "ទីតាំងរបស់អ្នកឥឡូវនេះ",
          style: TextStyle(
            fontFamily: 'Preahvihear',
            fontSize: 24,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
        )
      ],
    );
  }

  Widget buildMap() {
    return Container(
      width: double.infinity,
      height: 400,
      child: FlutterMap(
        options: MapOptions(
          onTap: (p) async {
            location = await Geocoder.local.findAddressesFromCoordinates(
                // ignore: unnecessary_new
                new Coordinates(p.latitude, p.longitude));

            setState(() {
              point = p;
              print(p);
            });

            print(
                "${location.first.countryName} - ${location.first.featureName}");
          },
          center: LatLng(49.5, -0.09),
          zoom: 5.0,
        ),
        layers: [
          TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: point,
                builder: (ctx) => Container(
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
