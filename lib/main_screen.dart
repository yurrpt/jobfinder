import 'package:flutter/material.dart';
import 'package:job_finder_ui/screens/home/home_screen.dart';
import 'bottom_tab_bar.dart';

class MainScreen extends StatefulWidget {
  static const route = '/main-screen';
  final String? username;
  MainScreen({Key? key, @required this.username}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final List<Widget> pageList = <Widget>[
    HomeScreen(username),
  ];

  @override
  Widget build(BuildContext context) {
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
