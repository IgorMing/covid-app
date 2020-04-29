import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

import 'package:covid_app/models/summary_model.dart';

part 'summary_store.g.dart';

const String BASE_URL = 'https://api.covid19api.com/';

class Summary = _Summary with _$Summary;

abstract class _Summary with Store {
  @observable
  SummaryModel data = SummaryModel();

  @computed
  bool get loading => data.countries == null;

  @action
  fetch() async {
    final response = await http.get('$BASE_URL/summary');

    if (response.statusCode == 200) {
      data = SummaryModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load information');
    }
  }
}
