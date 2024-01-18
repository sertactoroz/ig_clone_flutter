import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                radius: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Username'),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              )
            ],
          ),
          Image.network('https://picsum.photos/200/300'),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_border),
              ),
            ],
          ),
          Row(
            children: [
              Text('Liked by'),
              Text('Username'),
              Text('and'),
              Text('others'),
            ],
          ),
          Row(
            children: [
              Text('Username'),
              Text('Caption'),
            ],
          ),
          Row(
            children: [
              Text('View all'),
              Text('comments'),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                radius: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Add a comment...'),
            ],
          ),
          Row(
            children: [
              Text('1 day ago'),
            ],
          ),
        ],
      ),
    );
  }
}
