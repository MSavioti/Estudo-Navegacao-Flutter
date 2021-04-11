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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
