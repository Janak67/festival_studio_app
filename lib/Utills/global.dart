import 'package:festival_studio_app/Model/categoryModel.dart';
import 'package:festival_studio_app/Model/festivalModel.dart';

class Global {
  static Global g1 = Global();

  List<CategoryModel> festivalList = [
    CategoryModel(name: "New Year", image: "assets/img/new year.png"),
    CategoryModel(name: "Uttarayan", image: "assets/img/uttarayan.png"),
    CategoryModel(name: "Republic Day", image: "assets/img/republic day.png"),
    CategoryModel(name: "Maha Shivratri", image: "assets/img/shivratri.png"),
    CategoryModel(name: "Holi", image: "assets/img/holi.png"),
    CategoryModel(name: "Ram Navami", image: "assets/img/ram navami.png"),
    CategoryModel(name: "Hanuman Jayanti", image: "assets/img/hanuman jayanti.png"),
    CategoryModel(name: "Guru Purnima", image: "assets/img/guru purnima.png"),
    CategoryModel(name: "Raksha Bandhan", image: "assets/img/raksha bandhan.png"),
    CategoryModel(name: "Janmashtami", image: "assets/img/janmashtami.png"),
    CategoryModel(name: "Ganesh Chaturthi", image: "assets/img/ganesh.png"),
    CategoryModel(name: "Gandhi Jayanti", image: "assets/img/gandhi jayanti.png"),
    CategoryModel(name: "Navratri", image: "assets/img/navaratri.png"),
    CategoryModel(name: "Dhanteras", image: "assets/img/dhanteras.png"),
    CategoryModel(name: "Diwali", image: "assets/img/diwali.png"),
  ];

  List<Map>imageList=[
    {"image":"assets/img/holi.png","name":"Holi"},
    {"image":"assets/img/ganesh.png","name":"Holi"}
  ];

  List<FestivalModel> modelList = [];
  String? festivalname;
}
