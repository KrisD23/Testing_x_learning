import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var textSize = 3.00;
  void fontIncrease() {
    
    setState(() {
      textSize ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
             Text(
              "Test",
              style: TextStyle(fontSize: textSize),
            ),
            OutlinedButton.icon(
              onPressed: fontIncrease,
              icon: const Icon(Icons.add_to_photos_sharp),
              label: const Text('Press me'),
            ),
          ],
        ),
      ),
    );
  }
}
