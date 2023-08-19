import 'dart:convert';

class DataModel {
  int id;
  String name;
  String description;
  int price;
  int stars;
  int people;
  int selectedPeople;
  String img;
  String location;

  DataModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stars,
    required this.people,
    required this.selectedPeople,
    required this.img,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stars': stars,
      'people': people,
      'selected_people': selectedPeople,
      'img': img,
      'location': location,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      stars: map['stars'] as int,
      people: map['people'] as int,
      selectedPeople: map['selected_people'] as int,
      img: map['img'] as String,
      location: map['location'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
