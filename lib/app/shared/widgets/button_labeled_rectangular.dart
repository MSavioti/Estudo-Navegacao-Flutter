import 'package:flutter/material.dart';

class LabeledRectangularButton extends StatelessWidget {
  final String label;
  final Function callback;

  const LabeledRectangularButton(
      {Key key, @required this.label, @required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.purple[600]),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.amber[200],
        ),
      ),
    );
  }
}
