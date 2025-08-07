import 'package:flutter/material.dart';

class StatefulWidgetScreen extends StatefulWidget {
  const StatefulWidgetScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StatefulWidgetScreenState();
  }
}

class _StatefulWidgetScreenState extends State<StatefulWidgetScreen> {
  var textoDaTela = "Texto X";

  @override
  void initState() {
    textoDaTela = 'Texto initState';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(textoDaTela),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  textoDaTela = "Bem vindo a academia do Flutter";
                });
              },
              child: Text('Alterar o texto'),
            ),
          ],
        ),
      ),
    );
  }
}
