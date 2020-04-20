import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  final String value;

  const DefaultTitle(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.value,
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
