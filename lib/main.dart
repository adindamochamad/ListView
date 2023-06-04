import 'package:flutter/material.dart';
import 'package:hellolist/homepage.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J'
    ];
    final List<int> colorCodes = <int>[
      600,
      500,
      400,
      300,
      200,
      100,
      50,
      40,
      30,
      20
    ];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Hello List View")),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8.0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
            child: Container(
              height: 100,
              // width: 100,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
          );
        },
      ),
    );
  }
}
