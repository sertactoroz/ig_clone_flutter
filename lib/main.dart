// main.dart

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Instagram Clone',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  bool isLoading = true; // Set to false when loading is complete
  // int _selectedIndex = 0;
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLoading = context.watch<MyAppState>().isLoading;

    return isLoading
        ? AppInit()
        : Scaffold(
            appBar: AppBar(
              title: Text('Instagram Clone'),
            ),
            // body: pages[_selectedIndex],
            bottomNavigationBar: CustomBottomNavigationBar(),
          );
  }
}

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      context.read<MyAppState>().isLoading = false;
      context.read<MyAppState>().notifyListeners();
    });

    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Instagram',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: 'Clone',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
