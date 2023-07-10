import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var jsonData;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/trainees.json');
    final data = await json.decode(response);
    setState(() {
      jsonData = data;
      print(jsonData.length);
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

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
          child: Container(
            margin: EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(jsonData.length.toString() + " trainees")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Prev"),
                    ),
                    Text(jsonData[0]["name"]),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Next"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
