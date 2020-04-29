import 'package:covid_app/models/countries_model.dart';
import 'package:covid_app/models/global_model.dart';

class SummaryModel {
  final GlobalModel global;
  final CountriesModel countries;

  SummaryModel({this.global, this.countries});

  factory SummaryModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> countries = json["Countries"];
    return SummaryModel(
      countries: CountriesModel.fromJson(countries),
      global: GlobalModel.fromJson(json["Global"]),
    );
  }
}
