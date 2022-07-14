import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/addplace.dart';
import 'package:flutter_application_1/notify/addplace_notify.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
            buildHeader(),
            SizedBox(
              height: 60,
            ),
            buildImage(),
            buildText(),
          ],
        ),
      ),
      // body: ListView(
      //   children: order.items.map(
      //         (e) => Dismissible(
      //           direction: DismissDirection.endToStart,
      //           onDismissed: (dir) {
      //             order.removeOrder(e);
      //           },
      //           background: Container(
      //             color: Colors.red,
      //             padding: EdgeInsets.only(right: 8),
      //             child: Align(
      //               child: Icon(
      //                 Icons.delete,
      //                 color: Colors.white,
      //               ),
      //               alignment: Alignment.centerRight,
      //             ),
      //           ),
      //           key: Key(UniqueKey().toString()),
      //           child: Padding(
      //             padding: EdgeInsets.all(10),
      //             child: PopularCardAdded(e),
      //           ),
      //         ),
      //       ).toList(),
      // ),
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

  Widget buildImage() {
    return Container(
      height: 200,
      child: Image.asset(
        "assets/images/sad.png",
        width: double.infinity,
      ),
    );
  }

  Widget buildText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "អត់ទាន់មានគម្រោង?\nដើរលេងលំហែរខួរតិចហ្អី?",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontFamily: 'Preahvihear',
            fontSize:26,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

