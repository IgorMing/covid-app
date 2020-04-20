import 'package:covid_app/components/spinner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:covid_app/stores/countries.dart';
import 'package:covid_app/components/search_bar.dart';

final countries = Countries();

class CountriesList extends StatelessWidget {
  CountriesList() {
    countries.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => countries.loading
          ? Spinner()
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: SearchBar(
                      hintText:
                          "Search among the current ${countries.totalCountries} coutries",
                      onChanged: countries.setFilter,
                    ),
                  ),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: countries.fetch,
                      child: ListView.builder(
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
