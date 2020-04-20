import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final Function onChanged;

  const SearchBar({this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextField(
        autocorrect: false,
        decoration: InputDecoration(
          hintText: this.hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
        onChanged: this.onChanged,
      ),
    );
  }
}
