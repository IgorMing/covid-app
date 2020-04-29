import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:covid_app/components/spinner.dart';
import 'package:covid_app/components/global_info.dart';
import 'package:covid_app/components/countries_list.dart';
import 'package:covid_app/stores/summary_store.dart';

final summary = Summary();

class Home extends StatelessWidget {
  final String title;

  Home({this.title}) {
    summary.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Observer(builder: (_) {
        return summary.loading
            ? Spinner()
            : Column(
                children: <Widget>[
                  GlobalInfo(summary.data.global),
                  Expanded(
                    child: CountriesList(summary.data.countries),
                  ),
                ],
              );
      }),
    );
  }
}
