import 'package:covid_app/components/global_info_row.dart';
import 'package:flutter/material.dart';

class GlobalInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          alignment: Alignment.center,
          // color: Colors.blue,
          child: Text(
            'Pelo mundo',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GlobalInfoRow(label: 'Casos Confirmados', value: 112332),
            GlobalInfoRow(label: 'Total de Mortes', value: 1322),
            GlobalInfoRow(label: 'Casos recuperados', value: 12),
          ],
        )),
      ],
    ));
  }
}
