import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int change = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue[700],
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask Me Anything',
              ),
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          change = Random().nextInt(5) + 1;
                        });
                      },
                      child: Image.asset('images/ball$change.png')),
                )),
              ],
            ),
          )),
    );
  }
}
