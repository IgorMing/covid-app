import 'package:covid_app/models/country_model.dart';
import 'package:covid_app/models/global_model.dart';

class SummaryModel {
  GlobalModel global = GlobalModel();
  List<CountryModel> countries = List<CountryModel>();

  SummaryModel({this.global, this.countries});

  factory SummaryModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> countries = json["Countries"];
    return SummaryModel(
      countries:
          countries.map((country) => CountryModel.fromJson(country)).toList(),
      global: GlobalModel.fromJson(json["Global"]),
    );
  }
}
