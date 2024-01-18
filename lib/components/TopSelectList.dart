import 'package:flutter/material.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class TopSelectList extends StatefulWidget {
  @override
  _TopSelectListState createState() => _TopSelectListState();
}

class _TopSelectListState extends State<TopSelectList> {
  String selectedValue = 'For you'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
      items: <String>['For you', 'Favorites', 'Meta Verified']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value), // Display text in the dropdown menu
        );
      }).toList(),
    );
  }
}
