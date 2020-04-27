import 'package:flutter/material.dart';

class GlobalInfoRow extends StatelessWidget {
  final Color color;
  final String label;
  final int value;

  const GlobalInfoRow({this.color, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            '${this.value}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.brightness_1,
            color: this.color,
          ),
          Text(
            '${this.label}',
            style: TextStyle(
              color: this.color,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
