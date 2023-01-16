import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final String? name;
  const HomeAppBar({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 139, 0, 0),
      padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Home',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '$name',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/avatar.png',
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
