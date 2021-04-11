import 'package:flutter/material.dart';

class LabeledRectangularButton extends StatelessWidget {
  const LabeledRectangularButton({Key key, this.label, this.callback})
      : super(key: key);

  final String label;
  final Function callback;

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
