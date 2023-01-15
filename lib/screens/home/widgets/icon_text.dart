import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color.fromARGB(255, 139, 0, 0),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    );
  }
}
