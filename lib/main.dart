import 'package:covid_app/screens/countries_list.dart';
import 'package:flutter/material.dart';

import 'package:covid_app/screens/home.dart';

void main() => runApp(CovidApp());

class CovidApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const String _title = 'Covid App';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black87,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => Home(title: _title),
        '/countries_list': (_) => CountriesList(),
      },
    );
  }
}
