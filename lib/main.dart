import 'package:flutter/material.dart';

import 'package:covid_app/screens/home.dart';

void main() => runApp(CovidApp());

class CovidApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String _title = 'Covid App';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black87,
      ),
      home: Home(title: _title),
    );
  }
}
