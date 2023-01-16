import 'package:flutter/material.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/job_list.dart';
import 'widgets/search_card.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HomeAppBar(name: username),
                SearchCard(),
                Container(margin: EdgeInsets.only(bottom: 40), child: JobList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
