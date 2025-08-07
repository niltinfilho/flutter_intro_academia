import 'package:flutter/material.dart';
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
      home: WidgetsBasicosScreen(),
    );
  }
}
