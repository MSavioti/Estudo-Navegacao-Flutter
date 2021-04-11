import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação - Ângelo',
      theme: appTheme(),
      home: HomePage(title: 'Navegação - Ângelo'),
    );
  }

  ThemeData appTheme() {
    return ThemeData(
      primaryColor: Colors.amber[300],
      buttonColor: Colors.amber[300],
      backgroundColor: Colors.amber[100],
      scaffoldBackgroundColor: Colors.amber[100],
      accentColor: Colors.amber[300],
      iconTheme: IconThemeData(
        color: Colors.amber,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    CircleAvatar(
                      backgroundColor: Colors.purple[600],
                      radius: 32.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Lowest',
                            style: TextStyle(
                              color: Colors.amber[200],
                              fontSize: 11.0,
                            ),
                          ),
                          Text(
                            _lowestValue.toString(),
                            style: TextStyle(
                              color: Colors.amber[200],
                              fontSize: 28.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      _counter.toString(),
                      style: TextStyle(
                        fontSize: 52.0,
                        color: Colors.purple[800],
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.purple[600],
                      radius: 32.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Highest',
                            style: TextStyle(
                              color: Colors.amber[200],
                              fontSize: 11.0,
                            ),
                          ),
                          Text(
                            _highestValue.toString(),
                            style: TextStyle(
                              color: Colors.amber[200],
                              fontSize: 28.0,
                            ),
                          ),
                        ],
                      ),
                    )
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
              ],
            ),
          ),
        ));
  }
}
