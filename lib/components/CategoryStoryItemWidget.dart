import 'package:flutter/material.dart';

/*
Title:CategoryStoryItemWidget
Purpose:CategoryStoryItemWidget
Created By:Kalpesh Khandla
*/

class CategoryStoryItemWidget extends StatelessWidget {
  final String name;
  const CategoryStoryItemWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          border: Border.all(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 25, top: 10, bottom: 10),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
