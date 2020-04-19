import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:covid_app/stores/countries/countries_store.dart';
import 'package:covid_app/components/search_bar.dart';

final countries = Countries();

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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Observer(
                  builder: (_) => SearchBar(
                    affectedCountries: countries.totalCountries,
                    onChanged: countries.setFilter,
                  ),
                ),
              ),
              Expanded(
                child: Observer(
                  builder: (_) => ListView.builder(
                    itemCount: countries.filteredCountries.length,
                    itemBuilder: (_, int index) => ListTile(
                      title: Text(countries.filteredCountries[index].name),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
