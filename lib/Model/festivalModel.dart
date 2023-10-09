class FestivalModel {
  String? image, name;

  FestivalModel({this.image, this.name});

  factory FestivalModel.fromMap(Map m1){
    FestivalModel f1 =FestivalModel(
      image: m1['image'],
      name: m1['name'],
    );
    return f1;
  }
}
