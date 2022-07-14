import 'package:flutter_application_1/constant/place_constant.dart';

class PlaceModel {
  String? name;
  String? image;
  String? bgimage;
  String? des;
  String? des_tip;
  PlaceModel({this.name, this.image, this.bgimage, this.des, this.des_tip});
}

final List<PlaceModel> placeList = [
  PlaceModel(
    name: "បោះជំរុំ",
    image: "camp.png",
    bgimage: "bg_camp.png",
    des: CAMP,
    des_tip: CAMP_TIPS,
  ),
  PlaceModel(
    name: "ប្រាសាទ",
    image: "temple.png",
    bgimage: "bg_temple.png",
    des: HISTORY,
    des_tip: HISTORY_TIPS,
  ),
  PlaceModel(
    name: "ឆ្នេរ សមុទ្រ",
    image: "beach.png",
    bgimage: "bg_sea.png",
    des: SEA,
    des_tip: SEA_TIPS,
  ),
  PlaceModel(
    name: "ព្រៃ ភ្នំ",
    image: "mountain.png",
    bgimage: "bg_moun.png",
    des: MOUNTAIN,
    des_tip: " " ,
  ),
];
