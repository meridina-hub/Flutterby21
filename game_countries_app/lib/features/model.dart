abstract class Model {
  final String text;
  final String image;
  Model({required this.text, required this.image});
}

class ContinentModel extends Model {
  ContinentModel({required super.text, required super.image});
}

class CountriesModel extends Model {
  CountriesModel({required super.text, required super.image});
}

ContinentModel object =
    ContinentModel(text: "Europe", image: 'assets/continents/europe.png');

ContinentModel object1 =
    ContinentModel(text: "Asia", image: 'assets/continents/asia.png');
ContinentModel object2 = ContinentModel(
    text: "North America", image: 'assets/continents/nourth.america.png');

ContinentModel object3 = ContinentModel(
    text: "South America", image: 'assets/continents/south.america.png');
ContinentModel object4 =
    ContinentModel(text: "Africa", image: 'assets/continents/africa.png');

ContinentModel object5 =
    ContinentModel(text: "Australia", image: 'assets/continents/australia.png');

List<ContinentModel> a = [
  object,
  object1,
  object2,
  object3,
  object4,
  object5,
];
