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
  var textSize = 10.00;
  var bgColor = 0; 
  List <Color> colors = [Colors.black,Colors.white,Colors.amber,Colors.pinkAccent];
  void fontIncrease() {
    setState(() {
      textSize++;
    });
  }
  void colorLeft (){
    setState(() {
      bgColor--;
    });
  }
  void colorRight (){
    setState(() {
      bgColor++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( appBar: AppBar(backgroundColor: colors[1]),
      backgroundColor: colors[bgColor],
      
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hello world!",
                style: TextStyle(fontSize: textSize),
              ),
              OutlinedButton.icon(
                onPressed: fontIncrease,
                icon: const Icon(Icons.add_to_photos_sharp),
                label: const Text('Increase'),
              ),

              //Color Change:
              const SizedBox(
                height: 23,
              ),
              Row(mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton.small(
                      onPressed: colorLeft,
                      child: const Icon(Icons.arrow_left)),
                  const Text(' Change Color of the Screen ',style: TextStyle(fontSize: 16),),
                  FloatingActionButton.small(
                      onPressed: colorRight,
                      child: const Icon(Icons.arrow_right))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
