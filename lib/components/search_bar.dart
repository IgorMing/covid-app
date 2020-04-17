import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final int affectedCountries;

  SearchBar({this.affectedCountries});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "Search among the current $affectedCountries coutries",
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}
