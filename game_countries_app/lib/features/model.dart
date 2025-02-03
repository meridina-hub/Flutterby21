abstract class Model {
  final String text;

  Model({required this.text});
}

class ContinentModel extends Model {
  ContinentModel({required super.text});
}

class CountriesModel extends Model {
  CountriesModel({required super.text});
}

ContinentModel object = ContinentModel(text: "Europe");

ContinentModel object1 = ContinentModel(text: "Asia");
ContinentModel object2 = ContinentModel(text: "North America");

ContinentModel object3 = ContinentModel(text: "South America");
ContinentModel object4 = ContinentModel(text: "Africa");

ContinentModel object5 = ContinentModel(text: "Australia");

List<ContinentModel> a = [
  object,
  object1,
  object2,
  object3,
  object4,
  object5,
];
