import 'package:covid_app/models/country_model.dart';

class CountriesModel {
  final List<CountryModel> countries;

  const CountriesModel(this.countries);

  factory CountriesModel.fromJson(List<dynamic> json) {
    final countries =
        json.map((country) => CountryModel.fromJson(country)).toList();

    return CountriesModel(countries);
  }

  int get length => countries.length;

  String getName(int index) => countries[index].name;

  CountriesModel filteredCountriesByName(String name) {
    if (name.isEmpty) {
      return this;
    }

    return CountriesModel(
      countries
          .where((country) =>
              country.name.toLowerCase().contains(name.toLowerCase()))
          .toList(),
    );
  }
}
