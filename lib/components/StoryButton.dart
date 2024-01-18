import 'package:flutter/material.dart';

class StoryButton extends CircleAvatar {
  StoryButton({
    Key? key,
    required String image,
    required String name,
  }) : super(
          key: key,
          radius: 30,
          backgroundImage: NetworkImage(image),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        );
}
