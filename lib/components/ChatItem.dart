import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 12)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 4)),
                Row(
                  children: [
                    Text(
                      'Hello, how are you?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 4)),
                    Text('• 22h',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ))
                  ],
                )
              ],
            ),
          ),
          Text("●", style: TextStyle(fontSize: 24, color: Colors.blue)),
          Padding(padding: EdgeInsets.only(left: 12)),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
        ],
      ),
    );
  }
}
