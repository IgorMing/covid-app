import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:covid_app/stores/countries/countries_store.dart';
import 'package:covid_app/components/search_bar.dart';

final countries = Countries();

class CountriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Observer(
                builder: (_) => SearchBar(
                  hintText:
                      "Search among the current ${countries.totalCountries} coutries",
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
      ),
    );
  }
}
