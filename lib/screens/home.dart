import 'package:covid_app/components/global_info.dart';
import 'package:covid_app/components/countries_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  const Home({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          GlobalInfo(),
          Expanded(
            child: CountriesList(),
          )
        ],
      ),
    );
  }
}
