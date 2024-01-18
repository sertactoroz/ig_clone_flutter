import 'package:flutter/material.dart';
import 'package:igclone_flutter/main.dart';
import 'package:provider/provider.dart';
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';
import '../screens/add_screen.dart';
import '../screens/activity_screen.dart';
import '../screens/profile_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  // List of pages for the PageView
  final List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    AddScreen(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // Check if loading is complete
    bool isLoading = context.watch<MyAppState>().isLoading;

    return isLoading
        ? Container() // Return an empty container if loading is not complete
        : Scaffold(
            body: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: pages,
            ),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.black,
              currentIndex: _currentIndex,
              onTap: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_box),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '',
                ),
              ],
            ),
          );
  }
}

class PageWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  PageWidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 48.0,
            color: Colors.grey,
          ),
          SizedBox(height: 16.0),
          Text(
            label,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
