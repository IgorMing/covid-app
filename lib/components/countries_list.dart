import 'package:flutter/material.dart';

import 'package:covid_app/components/search_bar.dart';
import 'package:covid_app/models/countries_model.dart';

class CountriesList extends StatelessWidget {
  final CountriesModel data;
  final Function onChanged;

  const CountriesList(this.data, {this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SearchBar(
              hintText: "Search among the current ${data.length} coutries",
              onChanged: this.onChanged,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (_, int index) => ListTile(
                title: Text(data.getName(index)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
