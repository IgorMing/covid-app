import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:covid_app/models/country_model.dart';

part 'countries_store.g.dart';

const String BASE_URL = 'https://api.covid19api.com/';

class Countries = _Countries with _$Countries;

abstract class _Countries with Store {
  static List<Country> parse(String responseBody) {
    final parsed = json.decode(responseBody);
    return parsed.map<Country>((json) => Country.fromJson(json)).toList();
  }

  @observable
  ObservableList<Country> data = ObservableList.of([]);

  @observable
  String filter = '';

  @computed
  int get totalCountries => data.length;

  @computed
  List<Country> get filteredCountries {
    if (filter.isEmpty) {
      return data;
    }

    return data
        .where((country) =>
            country.name.toLowerCase().contains(filter.toLowerCase()))
        .toList();
  }

  @action
  setFilter(String value) => filter = value;

  @action
  fetch() async {
    final response = await http.get('$BASE_URL/countries');

    if (response.statusCode == 200) {
      data.clear();
      data.addAll(parse(response.body));
    } else {
      throw Exception('Failed to load countries');
    }
  }
}
