import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Text('EUA Question'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade500,),
          body: const Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  label: Text('fgxdghdbdhdhdhg'))
                  ),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
