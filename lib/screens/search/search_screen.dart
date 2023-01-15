import 'package:flutter/material.dart';
import 'package:job_finder_ui/screens/search/widgets/search_app_bar.dart';
import 'package:job_finder_ui/screens/search/widgets/search_input.dart';
import 'package:job_finder_ui/screens/search/widgets/search_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              SearchAppBar(),
              SearchInput(),
              Expanded(child: SearchList()),
            ],
          )
        ],
      ),
    );
  }
}
