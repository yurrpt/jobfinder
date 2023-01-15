import 'package:flutter/material.dart';
import 'package:job_finder_ui/screens/home/widgets/home_app_bar.dart';
import 'package:job_finder_ui/screens/home/widgets/job_list.dart';
import 'package:job_finder_ui/screens/home/widgets/search_card.dart';

class HomeScreen extends StatelessWidget {
  final String? username;
  const HomeScreen({Key? key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HomeAppBar(),
                SearchCard(),
                Container(
                    margin: EdgeInsets.only(bottom: 40), child: JobList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
