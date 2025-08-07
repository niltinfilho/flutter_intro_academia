import 'package:flutter/material.dart';
import 'package:flutter_intro_academia/hello_world/hello_world_screen.dart';
import 'package:flutter_intro_academia/scaffold_example/scaffold_screen.dart';
import 'package:flutter_intro_academia/stateful_widget_example/stateful_widget_screen.dart';
import 'package:flutter_intro_academia/widgets_basicos/widgets_basicos_screen.dart';

void main() {
  runApp(FlutterIntroApp());
}

class FlutterIntroApp extends StatelessWidget {
  const FlutterIntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Introdução',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      // home: HelloWorldScreen(),
      // home: ScaffoldScreen(),
      // home: WidgetsBasicosScreen(),
      // home: StatefulWidgetScreen(),
      routes: {
        '/': (context) => MenuPrincipal(),
        '/hello': (context) => HelloWorldScreen(),
        '/scaffold': (context) => ScaffoldScreen(),
        '/stateful': (context) => StatefulWidgetScreen(),
        '/widget-basico': (context) => WidgetsBasicosScreen(),
      },
    );
  }
}

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/hello');
                },
                title: Text('Hello Word'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/scaffold');
                },
                title: Text('Scaffold'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/stateful');
                },
                title: Text('Stateful Widget'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('/widget-basico');
                },
                title: Text('Widget Básico'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
