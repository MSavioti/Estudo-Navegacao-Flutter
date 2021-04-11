import 'package:flutter/material.dart';
import 'package:navegacao_angelo/app/shared/widgets/button_labeled_rectangular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Início'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Teste de navegação',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.purple[800],
                  ),
                ),
                LabeledRectangularButton(
                    label: 'Contador',
                    callback: () =>
                        {Navigator.pushReplacementNamed(context, '/contador')},
                    backgroundColor: Colors.purple[600],
                    textColor: Colors.amber[200])
              ],
            ),
          ),
        ),
        onWillPop: () async {
          if (Navigator.canPop(context)) return Future.value(true);

          return Future.value(false);
        });
  }
}
