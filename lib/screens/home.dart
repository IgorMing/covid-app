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
      body: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              color: Colors.grey[300],
              onPressed: () {
                Navigator.of(context).pushNamed('/countries_list');
              },
              child: Text('Lista de países'),
            ),
          )
        ],
      ),
    );
  }
}
