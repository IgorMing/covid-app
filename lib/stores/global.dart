import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

part 'global.g.dart';

const String BASE_URL = 'https://api.covid19api.com/';

class Global = _Global with _$Global;

abstract class _Global with Store {
  static Global parse(String responseBody) {
    final parsed = json.decode(responseBody);
    return parsed["Global"];
  }

  @observable
  Global data;

  @action
  fetch() async {
    final response = await http.get('$BASE_URL/summary');

    if (response.statusCode == 200) {
      data = parse(response.body);
    } else {
      throw Exception('Failed to load global information');
    }
  }
}
