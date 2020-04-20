import 'package:covid_app/models/country_model.dart';
import 'package:covid_app/models/global_model.dart';

class Summary {
  final List<Country> countries;
  final Global global;

  const Summary({this.countries, this.global});
}
