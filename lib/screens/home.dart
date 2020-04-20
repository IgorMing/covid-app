import 'package:covid_app/components/global_info.dart';
import 'package:covid_app/screens/countries_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;

  Home({this.title}) {
    countries.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: GlobalInfo(),
          ),
          Expanded(flex: 5, child: CountriesList())
        ],
      ),
    );
  }
}
