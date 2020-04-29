import 'package:flutter/material.dart';

import 'package:covid_app/components/global_info_row.dart';
import 'package:covid_app/components/text/default_title.dart';
import 'package:covid_app/models/global_model.dart';

class GlobalInfo extends StatelessWidget {
  final GlobalModel data;

  const GlobalInfo(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            alignment: Alignment.center,
            child: DefaultTitle('Pelo mundo'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // GlobalInfoRow(
              //   color: Colors.red[900],
              //   label: 'Mortes',
              //   value: data.deaths,
              // ),
              GlobalInfoRow(
                color: Colors.orange[900],
                label: 'Confirmados',
                value: data.confirmedCases,
              ),
              GlobalInfoRow(
                color: Colors.lightGreen[900],
                label: 'Recuperados',
                value: data.recovered,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
