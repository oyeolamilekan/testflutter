import 'package:flutterassignment/pages/home.dart';
import 'package:flutterassignment/pages/vet.dart';
import 'package:flutter/material.dart';

import 'animated_bottom_bar.dart';

class BottomBarNavigationPatternExample extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(text: "Home", icon: Icons.home, color: Colors.indigo),
    BarItem(text: "Food", icon: Icons.fastfood, color: Colors.pinkAccent),
    BarItem(text: "Search", icon: Icons.search, color: Colors.yellow.shade900),
    BarItem(text: "Vet", icon: Icons.add, color: Colors.teal),
  ];
  @override
  _BottomBarNavigationPatternExampleState createState() =>
      _BottomBarNavigationPatternExampleState();
}

class _BottomBarNavigationPatternExampleState
    extends State<BottomBarNavigationPatternExample> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomePage(),
    Container(),
    Container(),
    VetPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: AnimatedBottomBar(
          barItems: widget.barItems,
          animationDuration: const Duration(milliseconds: 200),
          onBarTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
