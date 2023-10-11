class FestivalModel {
  String? img, name;

  FestivalModel({this.img, this.name});

  factory FestivalModel.fromMap(Map m1){
    FestivalModel f1 =FestivalModel(
      img: m1['img'],
      name: m1['name'],
    );
    return f1;
  }
}
