import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:igclone_flutter/components/ChatItem.dart';
import 'package:igclone_flutter/components/ChatSearchInput.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const routeName = '/chat';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Chat',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.edit_document),
                onPressed: () {},
              ),
            ),
          ],
        ),
      )
          /*Text('Chat',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        */
          ),
      body: Center(
        child: Container(
            padding: EdgeInsets.only(top: 24, left: 12, right: 12),
            child: Column(
              children: [
                ChatSearchInput(),
                Padding(padding: EdgeInsets.only(top: 8)),
                Row(
                  children: [
                    Text(
                      'Messages',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => ChatItem())),
              ],
            )),
      ),
    );
  }
}
