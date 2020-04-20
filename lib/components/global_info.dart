import 'package:flutter/material.dart';

import 'package:covid_app/components/global_info_row.dart';
import 'package:covid_app/components/text/default_title.dart';
import 'package:covid_app/stores/global_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
        Expanded(
          child: Observer(
            builder: (_) => global.loading
                ? SpinKitPulse(
                    color: Colors.grey,
                    size: 50.0,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GlobalInfoRow(
                        label: 'Casos Confirmados',
                        value: global.data.confirmedCases,
                      ),
                      GlobalInfoRow(
                        label: 'Total de Mortes',
                        value: global.data.deaths,
                      ),
                      GlobalInfoRow(
                        label: 'Casos recuperados',
                        value: global.data.recovered,
                      ),
                    ],
                  ),
          ),
        ),
      ],
    ));
  }
}
