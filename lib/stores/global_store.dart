import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:covid_app/models/global_model.dart';

part 'global_store.g.dart';

const String BASE_URL = 'https://api.covid19api.com/';

class GlobalStore = _GlobalStore with _$GlobalStore;

abstract class _GlobalStore with Store {
  static GlobalModel parse(String responseBody) {
    final parsed = json.decode(responseBody);

    return GlobalModel.fromJson(parsed["Global"]);
  }

  @observable
  GlobalModel data = GlobalModel();

  @observable
  bool loading = true;

  @action
  fetch() async {
    loading = true;
    final response = await http.get('$BASE_URL/summary');

    loading = false;
    if (response.statusCode == 200) {
      data = parse(response.body);
    } else {
      throw Exception('Failed to load global information');
    }
  }
}
