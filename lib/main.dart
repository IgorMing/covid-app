import 'package:flutter/material.dart';

import 'package:covid_app/screens/home.dart';

void main() => runApp(CovidApp());

class CovidApp extends StatelessWidget {
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
      },
    );
  }
}
