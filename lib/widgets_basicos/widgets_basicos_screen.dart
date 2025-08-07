import 'package:flutter/material.dart';

class WidgetsBasicosScreen extends StatelessWidget {
  const WidgetsBasicosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Básicos'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Center(child: Text('Texto Qualquer')),
            Center(child: Text('Texto Qualquer 2')),
            Center(
              child: Text(
                'Texto Qualquer 3',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              spacing: 20,
              children: [
                Icon(
                  Icons.android,
                  size: 40,
                  color: Colors.green,
                ),
                Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.red,
                ),
                Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.orange,
                ),
              ],
            ),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Botão de Elevação')),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Botão de Texto')),
          ],
        ),
      ),
    );
  }
}
