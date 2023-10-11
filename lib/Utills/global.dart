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
    {"image":"assets/img/bgimg/new1.png","name":"New Year"},
    {"image":"assets/img/bgimg/new2.png","name":"New Year"},
    {"image":"assets/img/bgimg/new3.png","name":"New Year"},
    {"image":"assets/img/bgimg/new4.png","name":"New Year"},

    {"image":"assets/img/bgimg/kite1.png","name":"Uttarayan"},
    {"image":"assets/img/bgimg/kite2.png","name":"Uttarayan"},
    {"image":"assets/img/bgimg/kite3.png","name":"Uttarayan"},
    {"image":"assets/img/bgimg/kite4.png","name":"Uttarayan"},
    {"image":"assets/img/bgimg/kite5.png","name":"Uttarayan"},

    {"image":"assets/img/bgimg/republic4.png","name":"Republic Day"},
    {"image":"assets/img/bgimg/republic.png","name":"Republic Day"},
    {"image":"assets/img/bgimg/republic1.png","name":"Republic Day"},
    {"image":"assets/img/bgimg/republic2.png","name":"Republic Day"},
    {"image":"assets/img/bgimg/republic3.png","name":"Republic Day"},

    {"image":"assets/img/bgimg/shiv1.png","name":"Maha Shivratri"},
    {"image":"assets/img/bgimg/shiv2.png","name":"Maha Shivratri"},
    {"image":"assets/img/bgimg/shiv3.png","name":"Maha Shivratri"},
    {"image":"assets/img/bgimg/shiv4.png","name":"Maha Shivratri"},
    {"image":"assets/img/bgimg/shiv5.png","name":"Maha Shivratri"},

    {"image":"assets/img/bgimg/holi1.png","name":"Holi"},
    {"image":"assets/img/bgimg/holi2.png","name":"Holi"},
    {"image":"assets/img/bgimg/holi3.png","name":"Holi"},
    {"image":"assets/img/bgimg/holi4.png","name":"Holi"},
    {"image":"assets/img/bgimg/holi5.png","name":"Holi"},

    {"image":"assets/img/bgimg/ram1.png","name":"Ram Navami"},
    {"image":"assets/img/bgimg/ram2.png","name":"Ram Navami"},
    {"image":"assets/img/bgimg/ram3.png","name":"Ram Navami"},
    {"image":"assets/img/bgimg/ram4.png","name":"Ram Navami"},
    {"image":"assets/img/bgimg/ram5.png","name":"Ram Navami"},

    {"image":"assets/img/bgimg/hanuman1.png","name":"Hanuman Jayanti"},
    {"image":"assets/img/bgimg/hanuman2.png","name":"Hanuman Jayanti"},
    {"image":"assets/img/bgimg/hanuman3.png","name":"Hanuman Jayanti"},
    {"image":"assets/img/bgimg/hanuman4.png","name":"Hanuman Jayanti"},
    {"image":"assets/img/bgimg/hanuman5.png","name":"Hanuman Jayanti"},

    {"image":"assets/img/bgimg/guru1.png","name":"Guru Purnima"},
    {"image":"assets/img/bgimg/guru2.png","name":"Guru Purnima"},
    {"image":"assets/img/bgimg/guru3.png","name":"Guru Purnima"},
    {"image":"assets/img/bgimg/guru4.png","name":"Guru Purnima"},
    {"image":"assets/img/bgimg/guru5.png","name":"Guru Purnima"},

    {"image":"assets/img/bgimg/raksha1.png","name":"Raksha Bandhan"},
    {"image":"assets/img/bgimg/raksha2.png","name":"Raksha Bandhan"},
    {"image":"assets/img/bgimg/raksha3.png","name":"Raksha Bandhan"},
    {"image":"assets/img/bgimg/raksha4.png","name":"Raksha Bandhan"},
    {"image":"assets/img/bgimg/raksha5.png","name":"Raksha Bandhan"},

    {"image":"assets/img/bgimg/kano1.png","name":"Janmashtami"},
    {"image":"assets/img/bgimg/kano2.png","name":"Janmashtami"},
    {"image":"assets/img/bgimg/kano3.png","name":"Janmashtami"},
    {"image":"assets/img/bgimg/kano4.png","name":"Janmashtami"},
    {"image":"assets/img/bgimg/kano5.png","name":"Janmashtami"},

    {"image":"assets/img/bgimg/ganesh1.png","name":"Ganesh Chaturthi"},
    {"image":"assets/img/bgimg/ganesh2.png","name":"Ganesh Chaturthi"},
    {"image":"assets/img/bgimg/ganesh3.png","name":"Ganesh Chaturthi"},
    {"image":"assets/img/bgimg/ganesh4.png","name":"Ganesh Chaturthi"},
    {"image":"assets/img/bgimg/ganesh5.png","name":"Ganesh Chaturthi"},
    {"image":"assets/img/bgimg/ganesh6.png","name":"Ganesh Chaturthi"},

    {"image":"assets/img/bgimg/gandhi1.png","name":"Gandhi Jayanti"},
    {"image":"assets/img/bgimg/gandhi2.png","name":"Gandhi Jayanti"},
    {"image":"assets/img/bgimg/gandhi3.png","name":"Gandhi Jayanti"},
    {"image":"assets/img/bgimg/gandhi4.png","name":"Gandhi Jayanti"},
    {"image":"assets/img/bgimg/gandhi5.png","name":"Gandhi Jayanti"},

    {"image":"assets/img/bgimg/navaratri1.png","name":"Navratri"},
    {"image":"assets/img/bgimg/navaratri2.png","name":"Navratri"},
    {"image":"assets/img/bgimg/navaratri3.png","name":"Navratri"},
    {"image":"assets/img/bgimg/navaratri4.png","name":"Navratri"},
    {"image":"assets/img/bgimg/navaratri5.png","name":"Navratri"},

    {"image":"assets/img/bgimg/dhanteras1.png","name":"Dhanteras"},
    {"image":"assets/img/bgimg/dhanteras2.png","name":"Dhanteras"},
    {"image":"assets/img/bgimg/dhanteras3.png","name":"Dhanteras"},
    {"image":"assets/img/bgimg/dhanteras4.png","name":"Dhanteras"},
    {"image":"assets/img/bgimg/dhanteras5.png","name":"Dhanteras"},

    {"image":"assets/img/bgimg/diwali1.png","name":"Diwali"},
    {"image":"assets/img/bgimg/diwali2.png","name":"Diwali"},
    {"image":"assets/img/bgimg/diwali3.png","name":"Diwali"},
    {"image":"assets/img/bgimg/diwali4.png","name":"Diwali"},
    {"image":"assets/img/bgimg/diwali5.png","name":"Diwali"},
  ];

  List<FestivalModel> modelList = [];
  String? festivalname;
  String? images;
}
