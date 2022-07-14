import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteCustom extends StatefulWidget {
  const FavoriteCustom({Key? key}) : super(key: key);

  @override
  _FavoriteCustomState createState() => _FavoriteCustomState();
}

class _FavoriteCustomState extends State<FavoriteCustom> {
  bool _addFavorite = false;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print(_addFavorite);
    return IconButton(
        icon: Icon(_addFavorite ? Iconsax.heart5 : Iconsax.heart4),
        color: Colors.black,
        onPressed: () {
          // Setting the state
          setState(() {
            _addFavorite = !_addFavorite;
          });
        });
  }
}
