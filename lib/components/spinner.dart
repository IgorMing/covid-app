import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SpinKitPulse(
        color: Colors.grey,
        size: 50.0,
      ),
    );
  }
}
