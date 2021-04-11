import 'package:flutter/material.dart';

class CircleAvatarWidgetLabelAndName extends StatelessWidget {
  final String label;
  final String text;

  const CircleAvatarWidgetLabelAndName(
      {Key key, @required this.label, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.purple[600],
      radius: 32.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.amber[200],
              fontSize: 11.0,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.amber[200],
              fontSize: 28.0,
            ),
          ),
        ],
      ),
    );
  }
}
