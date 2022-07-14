import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          children: [
            buildImageProfile(),
            const SizedBox(
              height: 10,
            ),
            buildAppSetting(),
            buildProfileSetting(),
          ],
        ),
      ),
    );
  }

  Widget buildImageProfile() {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/cover.png"),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: 350,
            child: Container(
              alignment: const Alignment(0.0, 1.7),
              child: const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/avatar.png'),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          "ហួរ ច័ន្ទរ៉ាឌី",
          style: TextStyle(
            fontFamily: 'Preahvihear',
            fontSize: 26,
            color: Colors.black,
            package: 'khmer_fonts',
          ),
        ),
      ],
    );
  }

  Widget buildAppSetting() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16), //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 3, //spread radius
                    blurRadius: 6, // blur radius
                    offset: const Offset(0, 1), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "\t\tកំណត់គណនី",
                    // ignore: unnecessary_const
                    style: const TextStyle(
                      fontFamily: 'Preahvihear',
                      fontSize: 23.0,
                      color: Colors.black,
                      package: 'khmer_fonts',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileSetting() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16), //border corner radius
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 3, //spread radius
                    blurRadius: 6, // blur radius
                    offset: const Offset(0, 1), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "\t\tកំណត់កម្មវិធី",
                    // ignore: unnecessary_const
                    style: const TextStyle(
                      fontFamily: 'Preahvihear',
                      fontSize: 23.0,
                      color: Colors.black,
                      package: 'khmer_fonts',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
