import 'dart:developer';

import 'package:flutter/material.dart';

import 'bottom_tab_bar.dart';
import 'screens/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  static const route = '/main-screen';
  final String? username;
  MainScreen({Key? key, this.username}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    inspect(widget.username);
    final List<Widget> pageList = <Widget>[
      HomeScreen(username: widget.username ?? ''),
    ];

    return Scaffold(
      extendBody: true,
      body: pageList[pageIndex],
      bottomNavigationBar: BottomTabBar(
        index: pageIndex,
        onChangedTab: OnChangeTab,
      ),
    );
  }

  void OnChangeTab(int index) {
    setState(() {
      this.pageIndex = index;
    });
  }
}
