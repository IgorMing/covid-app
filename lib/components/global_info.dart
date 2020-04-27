import 'package:covid_app/components/spinner.dart';
import 'package:flutter/material.dart';

import 'package:covid_app/components/global_info_row.dart';
import 'package:covid_app/components/text/default_title.dart';
import 'package:covid_app/stores/global_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final global = GlobalStore();

class GlobalInfo extends StatelessWidget {
  GlobalInfo() {
    global.fetch();
  }

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
          Observer(
            builder: (_) => global.loading
                ? Spinner()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GlobalInfoRow(
                        color: Colors.red[900],
                        label: 'Mortes',
                        value: global.data.deaths,
                      ),
                      GlobalInfoRow(
                        color: Colors.orange[900],
                        label: 'Confirmados',
                        value: global.data.confirmedCases,
                      ),
                      GlobalInfoRow(
                        color: Colors.lightGreen[900],
                        label: 'Recuperados',
                        value: global.data.recovered,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
