import 'package:flutter/material.dart';

class ChatSearchInput extends StatelessWidget {
  const ChatSearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(top: 0, left: 12, right: 12),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.grey[200],
          filled: true,
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
