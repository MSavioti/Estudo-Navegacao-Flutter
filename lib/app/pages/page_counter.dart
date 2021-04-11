import 'package:flutter/material.dart';
import 'package:navegacao_angelo/app/shared/widgets/circle_avatar_label_and_text.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  int _highestValue = 0;
  int _lowestValue = 0;

  void _decrementCounter([int value = 1]) {
    setState(() {
      _counter -= value;

      if (_counter < _lowestValue) _lowestValue = _counter;
    });
  }

  void _incrementCounter([int value = 1]) {
    setState(() {
      _counter += value;

      if (_counter > _highestValue) _highestValue = _counter;
    });
  }

  void _resetValues() {
    setState(() {
      _counter = 0;
      _highestValue = 0;
      _lowestValue = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _counterCanvasHeight = MediaQuery.of(context).size.height / 2;
    double _counterCanvasWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SizedBox(
            width: _counterCanvasWidth,
            height: _counterCanvasHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatarWidgetLabelAndName(
                        label: 'Lowest', text: _lowestValue.toString()),
                    Text(
                      _counter.toString(),
                      style: TextStyle(
                        fontSize: 52.0,
                        color: Colors.purple[800],
                      ),
                    ),
                    CircleAvatarWidgetLabelAndName(
                        label: 'Highest', text: _highestValue.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: _decrementCounter,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[600]),
                      ),
                      child: Text(
                        '-1',
                        style: TextStyle(
                          color: Colors.amber[200],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[600]),
                      ),
                      child: Text(
                        '+1',
                        style: TextStyle(
                          color: Colors.amber[200],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () => {_decrementCounter(2)},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[600]),
                      ),
                      child: Text(
                        '-2',
                        style: TextStyle(
                          color: Colors.amber[200],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {_incrementCounter(2)},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[600]),
                      ),
                      child: Text(
                        '+2',
                        style: TextStyle(
                          color: Colors.amber[200],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: _resetValues,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[600]),
                      ),
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.amber[200],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
