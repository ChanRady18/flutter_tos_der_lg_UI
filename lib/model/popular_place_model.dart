import 'package:flutter_application_1/util/app_util.dart';

class PopularModel{
  String ?name;
  String ?image;
  String ?innerpicture;
  String ?destination;
  String ?type;
  String ?place;
  PopularModel({this.place,this.name,this.image,this.destination,this.type,this.innerpicture});
}
final List<PopularModel> popularList=[
  PopularModel(
    name: "សៀមរាប",
    image: "angkor_wat.jpg",
    destination: "៣២១",
    type: "ប្រាសាទ",
    innerpicture: "angkor.jpg",
    place: "ប្រាសាទអង្គរវត្ត"
  ),
  PopularModel(
    name: " ព្រះសីហនុ",
    image: "kps.jpg",
    destination: "២៣០",
    type: "ឆ្នេរ សមុទ្រ",
    innerpicture: "kps.jpg",
    place: "ឆ្នេរអូរឈើទាល"
  ),
  PopularModel(
    name: " មណ្ឌលគិរី",
    image: "mdk.jpg",
    destination: "៥២១",
    type: "ព្រៃ ភ្នំ",
    innerpicture: "mdk.jpg",
    place: "ដាក់ដាំ"
  ),
  PopularModel(
    name: " កំពត",
    image: "kampot.jpg",
    destination: "១៤៨",
    type: "បោះជំរុំ",
    innerpicture: "kampot.jpg",
    place: "មាត់ព្រែក"
  ),
];