import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        // backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: const Text("WorldSkills"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("test"),
        ),
      ),
    );
  }
}
