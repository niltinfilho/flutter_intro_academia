import 'package:flutter/material.dart';

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppBar Inicial',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('x'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Text('x'), label: 'X'),
          BottomNavigationBarItem(icon: Text('x'), label: 'Y'),
        ],
      ),
      body: Text('Olá'),
    );
  }
}
