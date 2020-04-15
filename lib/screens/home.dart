import 'package:flutter/material.dart';

import 'package:covid_app/stores/countries/countries_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final countries = Countries();

class Home extends StatelessWidget {
  final String title;

  Home({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: countries.data.length,
          itemBuilder: (_, int index) => ListTile(
            title: Text(countries.data[index].name),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: countries.fetch,
        child: Icon(Icons.remove),
      ),
    );
  }
}
