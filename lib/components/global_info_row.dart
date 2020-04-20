import 'package:flutter/material.dart';

class GlobalInfoRow extends StatelessWidget {
  final String label;
  final int value;

  const GlobalInfoRow({this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            '${this.label}: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('${this.value}'),
        ],
      ),
    );
  }
}
