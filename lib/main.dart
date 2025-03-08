import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'There has a no title',
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: const Text('practice of the getx')),
        body: Column(
          children: [
            Center(child: Text('GetX practice')),
            Center(child: Text('GetX practice')),
            Center(child: Text('GetX practice')),
          ],
        ),
      ),
    );
  }
}
