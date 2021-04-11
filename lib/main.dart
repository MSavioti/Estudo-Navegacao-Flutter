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

  @override
  Widget build(BuildContext context) {
    double _counterCanvasHeight = MediaQuery.of(context).size.height / 2;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SizedBox(
            height: _counterCanvasHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _counter.toString(),
                  style: TextStyle(
                    fontSize: 64.0,
                    color: Colors.purple[800],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
