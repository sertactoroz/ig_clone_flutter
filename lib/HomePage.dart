import 'package:flutter/material.dart';
import 'package:igclone_flutter/ChatPage.dart';
import 'package:igclone_flutter/components/PostCard.dart';
import 'package:igclone_flutter/components/StoryButton.dart';
import 'package:igclone_flutter/components/TopSelectList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 24, left: 12, right: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TopSelectList(),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      ChatPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = Offset(1.0, 0.0);
                                const end = Offset.zero;
                                const curve = Curves.easeInOut;
                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));
                                var offsetAnimation = animation.drive(tween);
                                return SlideTransition(
                                    position: offsetAnimation, child: child);
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      List.generate(10, (index) => MultiObjectWidget(index)),
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Column(
                    children: [
                      PostCard(),
                      SizedBox(
                          height:
                              8.0), // Add a small space (adjust height as needed)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MultiObjectWidget extends StatelessWidget {
  final int index;

  MultiObjectWidget(this.index);

  @override
  Widget build(BuildContext context) {
    /*
    return StoryButton(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
        name: "blank");

      */
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          StoryButton(
            image:
                "https://upload.wikimedia.org/wikipedia/commons/b/b6/Image_created_with_a_mobile_phone.png",
            name: "blank",
          ),
          Text("User"),
        ],
      ),
    );
  }
}
